import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_hyperpay_platform_interface.dart';

/// An implementation of [FlutterHyperpayPlatform] that uses method channels.
class MethodChannelFlutterHyperpay extends FlutterHyperpayPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_hyperpay');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
