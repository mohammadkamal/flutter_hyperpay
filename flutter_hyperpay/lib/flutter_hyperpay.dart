
import 'flutter_hyperpay_platform_interface.dart';

class FlutterHyperpay {
  Future<String?> getPlatformVersion() {
    return FlutterHyperpayPlatform.instance.getPlatformVersion();
  }
}
