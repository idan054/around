// .set() / .update() = WRITE.
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:haversine_distance/haversine_distance.dart';

// import 'package:haversine_distance/haversine_distance.dart';

import '../config/constants.dart';
import '../models/event_category/event_category.dart';
import '../models/event_item/event_item.dart';
import '../util/color_printer.dart';

// https://firebase.flutter.dev/docs/analytics/get-started
enum EventTypes { joinGroup }

class Database {
  static var db = FirebaseFirestore.instance;
  static final advanced = FsAdvanced();

  get dbSetting {
    db.settings = const Settings(persistenceEnabled: true, cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED);
  }

  static void deleteDoc({required String collection, String? docName}) {
    db.collection(collection).doc(docName).delete();
  }

  static Future<Map<String, dynamic>?> docData(String documentPath) => db.doc(documentPath).get().then((doc) => doc.data());

  static Future updateFirestore({
    required String collection,
    String? docName,
    required Map<String, dynamic> toJson,
    bool merge = true,
  }) async {
    db
        .collection(collection)
        .doc(docName)
        .set(toJson, SetOptions(merge: merge)) // Almost always true
        .onError((error, stackTrace) => print('updateFirestore ERR - $error'));
  }
}

class FsAdvanced {
  // Get 3 event start soon + Category filter
  // Get 3 lasted + Category filter
  // Get 3 location close + Category filter

  static final db = FirebaseFirestore.instance;
  static final reqBase = db.collection('events').orderBy('createdAt', descending: true);

  //~ The 3 start soon events of each category:
  static Future<List<EventItem>> getHomeEvents(int? age) async {
    print('START: getHomeEvents()');
    List<QueryDocumentSnapshot<Map<String, dynamic>>> eventDocs = [];
    List<EventItem> events = [];
    var homeReqBase = reqBase;
    if (age != null) homeReqBase = reqBase.where('ageRange', arrayContains: age);

    for (var category in categories) {
      print('category ${category.categoryName}');
      var snap = await homeReqBase.where('eventCategory.categoryType', isEqualTo: category.categoryType?.name).limit(3).get();
      eventDocs.addAll(snap.docs);
    }
    events = eventDocs.map((doc) {
      var event = EventItem.fromJson(doc.data());
      event = event.copyWith(id: doc.id);
      return event;
    }).toList();
    return events;
  }

  static Future<List<EventItem>> getCategoryEvents(int? age, EventCategory eventCategory) async {
    print('START: getCategoryEvents()');
    List<QueryDocumentSnapshot<Map<String, dynamic>>> eventDocs = [];
    List<EventItem> events = [];
    var homeReqBase = reqBase;
    if (age != null) homeReqBase = reqBase.where('ageRange', arrayContains: age);

    var snap = await homeReqBase.where('eventCategory.categoryType', isEqualTo: eventCategory.categoryType?.name).get();
    eventDocs.addAll(snap.docs);

    events = eventDocs.map((doc) {
      var event = EventItem.fromJson(doc.data());
      event = event.copyWith(id: doc.id);
      return event;
    }).toList();

    print('events ${events.length}');
    return events;
  }
}

EventItem setDistance(UserData user, EventItem event) {
  final haversineDistance = HaversineDistance();
  final startCoordinate = Location(
    double.parse('${user.address?.lat}'),
    double.parse('${user.address?.lng}'),
  );
  final endCoordinate = Location(
    double.parse('${event.latitude}'),
    double.parse('${event.longitude}'),
  );

  var distance = haversineDistance.haversine(startCoordinate, endCoordinate, Unit.METER).floor();
  var updatedEvent = event.copyWith(distanceFromUser: distance);
  return updatedEvent;
}
