import 'package:mmc_sbp/dto/s2b_member_model_dto.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'mmc_sbp_method_channel.dart';

abstract class MmcSbpPlatform extends PlatformInterface {
  MmcSbpPlatform() : super(token: _token);

  static final Object _token = Object();

  static MmcSbpPlatform _instance = MethodChannelMmcSbp();

  static MmcSbpPlatform get instance => _instance;

  static set instance(MmcSbpPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<List<String>> getInstalledBanks(List<String> apps) {
    throw UnimplementedError('getInstalledApps() has not been implemented.');
  }

  Future<bool> openBank({required String nspkUrl, required S2bMemberModelDto member}) async {
    throw UnimplementedError('openBank() has not been implemented.');
  }
}
