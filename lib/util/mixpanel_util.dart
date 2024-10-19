import 'package:mixpanel_flutter/mixpanel_flutter.dart';
import 'color_printer.dart';

class MixPanelUtil {
  static var mixpanel = Mixpanel('PlaceHolder');

  static void printTrackEvent(String val, {Map<String, dynamic>? properties}) {
    printPurple('Mixpanel PRINT: $val');
    if (properties != null) printWhite('Mixpanel JSON: $properties');
    mixpanel.track(val, properties: properties);
  }
}