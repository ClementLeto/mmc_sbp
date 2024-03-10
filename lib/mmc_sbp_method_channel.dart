import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:mmc_sbp/dto/s2b_member_model_dto.dart';

import 'mmc_sbp_platform_interface.dart';

/// An implementation of [MmcSbpPlatform] that uses method channels.
class MethodChannelMmcSbp extends MmcSbpPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('mmc_sbp');

  @override
  Future<List<String>> getInstalledBanks(List<String> apps) async =>
      List<String>.from(
          await methodChannel.invokeMethod('getInstalledBanks', apps) ?? []);

  @override
  Future<bool> openBank({
    required String nspkUrl,
    required S2bMemberModelDto member,
  }) async {
    String url = member.isInstalled
        ? nspkUrl.replaceFirst("https", member.schema)
        : "${member.webClientUrl}/${nspkUrl.split("/").last}";

    if (Platform.isAndroid) {
      return _openAndroidBank(nspkUrl: url, member: member);
    } else if (Platform.isIOS) {
      return _openBankIOS(nspkUrl: url, member: member);
    }
    return false;
  }

  Future<bool> _openAndroidBank({
    required String nspkUrl,
    required S2bMemberModelDto member,
  }) async {
    String? packageName = member.isInstalled ? member.packageName : null;
    return await methodChannel.invokeMethod(
      'openBank',
      {
        'url': nspkUrl,
        'package_name': packageName,
      },
    );
  }

  Future<bool> _openBankIOS({
    required String nspkUrl,
    required S2bMemberModelDto member,
  }) async {
    String? schema = member.isInstalled ? member.schema : null;

    return await methodChannel.invokeMethod(
      'openBank',
      {
        'url': nspkUrl,
        'schema': schema,
      },
    );
  }
}
