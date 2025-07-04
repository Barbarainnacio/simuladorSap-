// Flutter web plugin registrant file.
//
// Generated file. Do not edit.
//

// @dart = 2.13
// ignore_for_file: type=lint

import 'package:audioplayers_web/audioplayers_web.dart';
import 'package:flutter_native_splash/flutter_native_splash_web.dart';
import 'package:google_maps_flutter_web/google_maps_flutter_web.dart';
import 'package:url_launcher_web/url_launcher_web.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void registerPlugins([final Registrar? pluginRegistrar]) {
  final Registrar registrar = pluginRegistrar ?? webPluginRegistrar;
  AudioplayersPlugin.registerWith(registrar);
  FlutterNativeSplashWeb.registerWith(registrar);
  GoogleMapsPlugin.registerWith(registrar);
  UrlLauncherPlugin.registerWith(registrar);
  registrar.registerMessageHandler();
}
