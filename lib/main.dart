
import 'package:around/util/ext/widget_ext.dart';
import 'package:around/util/mixpanel_util.dart';
import 'package:around/views/home_view/home_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'config/constants.dart';
import 'config/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  MixPanelUtil.mixpanel =
      await Mixpanel.init('5def6b5a71bef4c9d148132ff4bcead2', trackAutomaticEvents: true);

  if (!kIsWeb) {
    final dbDir = await getApplicationDocumentsDirectory();
    Hive.init(dbDir.path);
  }

  await Hive.openBox('uniBox');
  await initializeDateFormatting('he_IL', null);
  MixPanelUtil.printTrackEvent(kDebugMode ? 'Debug Session start' : 'Live Session start');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, size) {
        double width = size.maxWidth;

        if (size.maxWidth < 700) {
          // Mobile
          return materialApp;
        } else {
          // Web
          return Container(
            color: bgColorDark,
            child: materialApp.px(width * 0.25),
          );
        }
      },
    );
  }
}

Widget get materialApp => MaterialApp(
    locale: const Locale('he'),
    title: 'Around',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    home: const HomeView());
