import 'package:flutter/material.dart';
import 'dart:async';

import 'package:mmc_sbp/dto/s2b_member_model_dto.dart';
import 'package:mmc_sbp/mmc_sbp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<S2bMemberModelDto> _installedBanks = [];

  @override
  void initState() {
    super.initState();
    init();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> init() async {
    if (!mounted) return;
    _installedBanks
        .addAll(await MmcSbp().getInstalledBanks(withWebClient: true));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: ListView.separated(
          itemCount: _installedBanks.length,
          itemBuilder: (context, index) {
            final bank = _installedBanks[index];
            return ListTile(
              leading: Image.network(bank.logoUrl, width: 48,),
              title: Text(bank.bankName),
              onTap: () => MmcSbp().openBank(
                nspkUrl: "https://qr.nspk.ru/BD10004BAD9ON80N9TD80N303FA15BAI",
                member: bank,
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
            height: 8,
          ),
        ),
      ),
    );
  }
}
