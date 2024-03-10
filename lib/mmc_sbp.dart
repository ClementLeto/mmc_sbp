import 'dart:io';
import 'package:mmc_sbp/dto/s2b_member_model_dto.dart';

import 'mmc_sbp_platform_interface.dart';

part 'constants/constants.dart';

part 'data/s2b_member_model.dart';

part 'data/s2b_members_model.dart';

class MmcSbp {
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

    final List<String> applications = Platform.isIOS
        ? s2bMembersModel.dictionary
            .where((member) => member.schema.isNotEmpty)
            .map((member) => member.schema)
            .toList()
        : s2bMembersModel.dictionary
            .where((member) => member.packageName.isNotEmpty)
            .map((member) => member.packageName)
            .toList();

    final List<String> installedApps =
        await MmcSbpPlatform.instance.getInstalledBanks(applications);

    final List<S2bMemberModelDto> data = s2bMembersModel.dictionary
        .where((member) =>
            member.packageName.isNotEmpty &&
                (Platform.isIOS
                    ? installedApps.contains(member.schema)
                    : installedApps.contains(member.packageName)) ||
            (withWebClient && member.isWebClientActive))
        .map((member) => S2bMemberModelDto(
              bankName: member.bankName,
              logoUrl: member.logoUrl,
              schema: member.schema,
              packageName: member.packageName,
              isInstalled: member.packageName.isNotEmpty &&
                  (Platform.isIOS
                      ? installedApps.contains(member.schema)
                      : installedApps.contains(member.packageName)),
              webClientUrl: member.webClientUrl,
              isWebClientActive: member.isWebClientActive,
            ))
        .toList();

    data.sort((a, b) => a.isInstalled ? -1 : (b.isInstalled ? 1 : 0));

    return data;
  }

  void openBank({
    required String nspkUrl,
    required S2bMemberModelDto member,
  }) =>
      MmcSbpPlatform.instance.openBank(nspkUrl: nspkUrl, member: member);
}
