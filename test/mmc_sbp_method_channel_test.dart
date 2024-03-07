import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mmc_sbp/mmc_sbp_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelMmcSbp platform = MethodChannelMmcSbp();
  const MethodChannel channel = MethodChannel('mmc_sbp');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getInstalledApps', () async {
    expect(await platform.getInstalledBanks(["ru.sberbankmobile"]), ["ru.sberbankmobile"]);
  });
}
