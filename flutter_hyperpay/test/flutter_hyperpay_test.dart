import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_hyperpay/flutter_hyperpay.dart';
import 'package:flutter_hyperpay/flutter_hyperpay_platform_interface.dart';
import 'package:flutter_hyperpay/flutter_hyperpay_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterHyperpayPlatform
    with MockPlatformInterfaceMixin
    implements FlutterHyperpayPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterHyperpayPlatform initialPlatform = FlutterHyperpayPlatform.instance;

  test('$MethodChannelFlutterHyperpay is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterHyperpay>());
  });

  test('getPlatformVersion', () async {
    FlutterHyperpay flutterHyperpayPlugin = FlutterHyperpay();
    MockFlutterHyperpayPlatform fakePlatform = MockFlutterHyperpayPlatform();
    FlutterHyperpayPlatform.instance = fakePlatform;

    expect(await flutterHyperpayPlugin.getPlatformVersion(), '42');
  });
}
