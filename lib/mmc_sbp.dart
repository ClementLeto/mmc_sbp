import 'dart:io';
import 'package:mmc_sbp/dto/s2b_member_model_dto.dart';

import 'mmc_sbp_platform_interface.dart';

part 'constants/constants.dart';

part 'data/s2b_member_model.dart';

part 'data/s2b_members_model.dart';

final class MmcSbp {
  static const String sbpJsonLocation =
      "https://qr.nspk.ru/proxyapp/c2bmembers.json";

  static final MmcSbp _mmcSbp = MmcSbp._internal();

  factory MmcSbp() => _mmcSbp;

  MmcSbp._internal();

  Future<List<S2bMemberModelDto>> getInstalledBanks({
    bool withWebClient = false,
  }) async {
    _S2bMembersModel s2bMembersModel =
    _S2bMembersModel.fromJson(_Constants.s2bMembers);
    if (Platform.isIOS) {
      final List<String> schemaApplications = s2bMembersModel.dictionary
          .where((member) => member.schema.isNotEmpty)
          .map((member) => member.schema)
          .toList();

    } else if (Platform.isAndroid) {
      final List<String> androidApplications = s2bMembersModel.dictionary
          .where((member) => member.packageName.isNotEmpty)
          .map((member) => member.packageName)
          .toList();
      final List<String> installedApps =
      await MmcSbpPlatform.instance.getInstalledBanks(androidApplications);

      final List<S2bMemberModelDto> data = s2bMembersModel.dictionary
          .where((member) =>
      member.packageName.isNotEmpty &&
          installedApps.contains(member.packageName) ||
          (withWebClient && member.isWebClientActive))
          .map((member) =>
          S2bMemberModelDto(
            bankName: member.bankName,
            logoUrl: member.logoUrl,
            schema: member.schema,
            packageName: member.packageName,
            isInstalled: member.packageName.isNotEmpty &&
                installedApps.contains(member.packageName),
            webClientUrl: member.webClientUrl,
            isWebClientActive: member.isWebClientActive,
          ))
          .toList();
      return data;
    }
    return [];
  }

  void openBank({
    required String nspkUrl,
    required S2bMemberModelDto member,
  }) async => MmcSbpPlatform.instance.openBank(nspkUrl: nspkUrl, member: member);

}
