import 'dart:io';

import 'package:dart_ping_ios/dart_ping_ios.dart';
import 'package:get_storage/get_storage.dart';

class BaseServices {
  loadService() async {
    print('Booting up ...');
    await GetStorage.init();
    if (Platform.isIOS) {
      DartPingIOS.register();
    }
    try {} catch (e) {
      // if (!FeatureConfig.buildProductionMode) {
      print(e);
      // }
    }
  }

  static systemLog(String key, String message) {
    print("[$key]: $message");
  }
}
