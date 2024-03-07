final class S2bMemberModelDto {
  final String bankName;
  final String logoUrl;
  final String schema;
  final String packageName;
  final bool isInstalled;
  final String webClientUrl;
  final bool isWebClientActive;

  const S2bMemberModelDto({
    required this.bankName,
    required this.logoUrl,
    required this.schema,
    required this.packageName,
    required this.isInstalled,
    required this.webClientUrl,
    required this.isWebClientActive,
  });
}
