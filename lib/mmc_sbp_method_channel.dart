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
  Future<List<String>> getInstalledBanks(List<String> apps) async {
    List<dynamic>? data =
        await methodChannel.invokeMethod('getInstalledBanks', apps);
    return List<String>.from(data ?? []);
  }

  @override
  Future<bool> openBank({
    required String nspkUrl,
    required S2bMemberModelDto member,
  }) async {
    if (Platform.isAndroid) {
      String url;
      String? packageName;
      if (member.isInstalled) {
        url = nspkUrl.contains("https")
            ? nspkUrl.replaceFirst("https", member.schema)
            : nspkUrl;
        packageName = member.packageName;
      } else {
        url = "${member.webClientUrl}/${nspkUrl.split("/").last}";
      }
      return _openAndroidBank(url: url, packageName: packageName);
    } else if (Platform.isIOS) {
      String url = nspkUrl;
      String? schema;
      if (!member.isInstalled) {
        url = "${member.webClientUrl}/${nspkUrl.split("/").last}";
      } else {
        schema = member.schema;
      }
      print(url);
      print("schema: $schema");
      return openBankIOS(
        url,
        schema,
      );
    }
    return Future.value(false);
  }

  Future<bool> _openAndroidBank({
    required String url,
    String? packageName,
  }) async =>
      await methodChannel.invokeMethod(
        'openBank',
        {
          'url': url,
          'package_name': packageName,
        },
      );

  Future<bool> openBankIOS(String url, String? schema) async =>
      await methodChannel.invokeMethod(
        'openBank',
        {
          'url': url,
          'schema': schema,
        },
      );
}
