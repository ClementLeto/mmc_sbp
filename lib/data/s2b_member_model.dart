part of '../mmc_sbp.dart';

final class _S2bMemberModel {
  final String bankName;
  final String logoUrl;
  final String schema;
  final String packageName;
  final String webClientUrl;
  final bool isWebClientActive;

  _S2bMemberModel._({
    required this.bankName,
    required this.logoUrl,
    required this.schema,
    required this.packageName,
    required this.webClientUrl,
    required this.isWebClientActive,
  });

  factory _S2bMemberModel.fromJson(Map<String, dynamic> json) =>
      _S2bMemberModel._(
        bankName: json['bankName'],
        logoUrl: json['logoURL'],
        schema: json['schema'] ?? "",
        packageName: json['package_name'] ?? "",
        webClientUrl: json['webClientUrl'] ?? "",
        isWebClientActive: _parseAsBool(
          value: json['isWebClientActive'],
          defaultValue: false,
        ),
      );

  static bool _parseAsBool({
    required dynamic value,
    required bool defaultValue,
  }) {
    if (value is String) {
      return value == "true";
    }
    return defaultValue;
  }
}
