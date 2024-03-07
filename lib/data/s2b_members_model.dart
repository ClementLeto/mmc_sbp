part of '../mmc_sbp.dart';

final class _S2bMembersModel {
  final String version;

  final List<_S2bMemberModel> dictionary;

  const _S2bMembersModel._({
    required this.version,
    required this.dictionary,
  });

  factory _S2bMembersModel.fromJson(Map<String, dynamic> json) =>
      _S2bMembersModel._(
        version: json['version'] ?? "0",
        dictionary: json.containsKey('dictionary')
            ? (json['dictionary'] as List)
                .map((model) => _S2bMemberModel.fromJson(model))
                .toList()
            : [],
      );
}
