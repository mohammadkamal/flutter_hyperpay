import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_hyperpay_method_channel.dart';

abstract class FlutterHyperpayPlatform extends PlatformInterface {
  /// Constructs a FlutterHyperpayPlatform.
  FlutterHyperpayPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterHyperpayPlatform _instance = MethodChannelFlutterHyperpay();

  /// The default instance of [FlutterHyperpayPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterHyperpay].
  static FlutterHyperpayPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterHyperpayPlatform] when
  /// they register themselves.
  static set instance(FlutterHyperpayPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
