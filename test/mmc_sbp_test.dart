import 'package:flutter_test/flutter_test.dart';
import 'package:mmc_sbp/dto/s2b_member_model_dto.dart';
import 'package:mmc_sbp/mmc_sbp.dart';
import 'package:mmc_sbp/mmc_sbp_platform_interface.dart';
import 'package:mmc_sbp/mmc_sbp_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMmcSbpPlatform
    with MockPlatformInterfaceMixin
    implements MmcSbpPlatform {
  @override
  Future<List<String>> getInstalledBanks(List<String> apps) =>
      Future.value(["ru.sberbankmobile"]);

  @override
  Future<bool> openBank({required String nspkUrl, required S2bMemberModelDto member}) {
    return Future.value(true);
  }
}

void main() {
  final MmcSbpPlatform initialPlatform = MmcSbpPlatform.instance;

  test('$MethodChannelMmcSbp is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMmcSbp>());
  });

  test('getInstalledApps', () async {
    MmcSbp mmcSbpPlugin = MmcSbp();
    MockMmcSbpPlatform fakePlatform = MockMmcSbpPlatform();
    MmcSbpPlatform.instance = fakePlatform;

    expect(await mmcSbpPlugin.getInstalledBanks(), [
      const S2bMemberModelDto(
        bankName: "Сбербанк",
        logoUrl: "https://qr.nspk.ru/proxyapp/logo/bank100000000111.png",
        packageName: "ru.sberbankmobile",
        schema: "bank100000000111",
          isInstalled: true,
        isWebClientActive: false,
        webClientUrl: "",
      )
    ]);
  });
}
