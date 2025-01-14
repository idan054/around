// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventItem _$EventItemFromJson(Map<String, dynamic> json) {
  return _EventItem.fromJson(json);
}

/// @nodoc
mixin _$EventItem {
// String? imagePngName,
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  EventCategory? get eventCategory =>
      throw _privateConstructorUsedError; // @DateTimeStampConv() DateTime? eventAt, // Actually no need for Groups...
  @DateTimeStampConv()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  List<dynamic>? get ageRange =>
      throw _privateConstructorUsedError; // int? maxAge,
// int? minAge,
  int? get distanceFromUser =>
      throw _privateConstructorUsedError; // Example 50 Meter away...
// AKA AddressResult()
  String? get address => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  bool? get withFee => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventItemCopyWith<EventItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventItemCopyWith<$Res> {
  factory $EventItemCopyWith(EventItem value, $Res Function(EventItem) then) =
      _$EventItemCopyWithImpl<$Res, EventItem>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      EventCategory? eventCategory,
      @DateTimeStampConv() DateTime? createdAt,
      String? phone,
      List<dynamic>? ageRange,
      int? distanceFromUser,
      String? address,
      String? latitude,
      String? longitude,
      bool? withFee});

  $EventCategoryCopyWith<$Res>? get eventCategory;
}

/// @nodoc
class _$EventItemCopyWithImpl<$Res, $Val extends EventItem>
    implements $EventItemCopyWith<$Res> {
  _$EventItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? eventCategory = freezed,
    Object? createdAt = freezed,
    Object? phone = freezed,
    Object? ageRange = freezed,
    Object? distanceFromUser = freezed,
    Object? address = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? withFee = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      eventCategory: freezed == eventCategory
          ? _value.eventCategory
          : eventCategory // ignore: cast_nullable_to_non_nullable
              as EventCategory?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      ageRange: freezed == ageRange
          ? _value.ageRange
          : ageRange // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      distanceFromUser: freezed == distanceFromUser
          ? _value.distanceFromUser
          : distanceFromUser // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      withFee: freezed == withFee
          ? _value.withFee
          : withFee // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventCategoryCopyWith<$Res>? get eventCategory {
    if (_value.eventCategory == null) {
      return null;
    }

    return $EventCategoryCopyWith<$Res>(_value.eventCategory!, (value) {
      return _then(_value.copyWith(eventCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventItemImplCopyWith<$Res>
    implements $EventItemCopyWith<$Res> {
  factory _$$EventItemImplCopyWith(
          _$EventItemImpl value, $Res Function(_$EventItemImpl) then) =
      __$$EventItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      EventCategory? eventCategory,
      @DateTimeStampConv() DateTime? createdAt,
      String? phone,
      List<dynamic>? ageRange,
      int? distanceFromUser,
      String? address,
      String? latitude,
      String? longitude,
      bool? withFee});

  @override
  $EventCategoryCopyWith<$Res>? get eventCategory;
}

/// @nodoc
class __$$EventItemImplCopyWithImpl<$Res>
    extends _$EventItemCopyWithImpl<$Res, _$EventItemImpl>
    implements _$$EventItemImplCopyWith<$Res> {
  __$$EventItemImplCopyWithImpl(
      _$EventItemImpl _value, $Res Function(_$EventItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? eventCategory = freezed,
    Object? createdAt = freezed,
    Object? phone = freezed,
    Object? ageRange = freezed,
    Object? distanceFromUser = freezed,
    Object? address = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? withFee = freezed,
  }) {
    return _then(_$EventItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      eventCategory: freezed == eventCategory
          ? _value.eventCategory
          : eventCategory // ignore: cast_nullable_to_non_nullable
              as EventCategory?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      ageRange: freezed == ageRange
          ? _value._ageRange
          : ageRange // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      distanceFromUser: freezed == distanceFromUser
          ? _value.distanceFromUser
          : distanceFromUser // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      withFee: freezed == withFee
          ? _value.withFee
          : withFee // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$EventItemImpl implements _EventItem {
  const _$EventItemImpl(
      {this.id,
      this.title,
      this.eventCategory,
      @DateTimeStampConv() this.createdAt,
      this.phone,
      final List<dynamic>? ageRange,
      this.distanceFromUser,
      this.address,
      this.latitude,
      this.longitude,
      this.withFee})
      : _ageRange = ageRange;

  factory _$EventItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventItemImplFromJson(json);

// String? imagePngName,
  @override
  final String? id;
  @override
  final String? title;
  @override
  final EventCategory? eventCategory;
// @DateTimeStampConv() DateTime? eventAt, // Actually no need for Groups...
  @override
  @DateTimeStampConv()
  final DateTime? createdAt;
  @override
  final String? phone;
  final List<dynamic>? _ageRange;
  @override
  List<dynamic>? get ageRange {
    final value = _ageRange;
    if (value == null) return null;
    if (_ageRange is EqualUnmodifiableListView) return _ageRange;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// int? maxAge,
// int? minAge,
  @override
  final int? distanceFromUser;
// Example 50 Meter away...
// AKA AddressResult()
  @override
  final String? address;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final bool? withFee;

  @override
  String toString() {
    return 'EventItem(id: $id, title: $title, eventCategory: $eventCategory, createdAt: $createdAt, phone: $phone, ageRange: $ageRange, distanceFromUser: $distanceFromUser, address: $address, latitude: $latitude, longitude: $longitude, withFee: $withFee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.eventCategory, eventCategory) ||
                other.eventCategory == eventCategory) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            const DeepCollectionEquality().equals(other._ageRange, _ageRange) &&
            (identical(other.distanceFromUser, distanceFromUser) ||
                other.distanceFromUser == distanceFromUser) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.withFee, withFee) || other.withFee == withFee));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      eventCategory,
      createdAt,
      phone,
      const DeepCollectionEquality().hash(_ageRange),
      distanceFromUser,
      address,
      latitude,
      longitude,
      withFee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventItemImplCopyWith<_$EventItemImpl> get copyWith =>
      __$$EventItemImplCopyWithImpl<_$EventItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventItemImplToJson(
      this,
    );
  }
}

abstract class _EventItem implements EventItem {
  const factory _EventItem(
      {final String? id,
      final String? title,
      final EventCategory? eventCategory,
      @DateTimeStampConv() final DateTime? createdAt,
      final String? phone,
      final List<dynamic>? ageRange,
      final int? distanceFromUser,
      final String? address,
      final String? latitude,
      final String? longitude,
      final bool? withFee}) = _$EventItemImpl;

  factory _EventItem.fromJson(Map<String, dynamic> json) =
      _$EventItemImpl.fromJson;

  @override // String? imagePngName,
  String? get id;
  @override
  String? get title;
  @override
  EventCategory? get eventCategory;
  @override // @DateTimeStampConv() DateTime? eventAt, // Actually no need for Groups...
  @DateTimeStampConv()
  DateTime? get createdAt;
  @override
  String? get phone;
  @override
  List<dynamic>? get ageRange;
  @override // int? maxAge,
// int? minAge,
  int? get distanceFromUser;
  @override // Example 50 Meter away...
// AKA AddressResult()
  String? get address;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  bool? get withFee;
  @override
  @JsonKey(ignore: true)
  _$$EventItemImplCopyWith<_$EventItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
