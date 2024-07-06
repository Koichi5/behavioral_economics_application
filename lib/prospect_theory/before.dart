import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProspectTheoryBefore extends StatelessWidget {
  const ProspectTheoryBefore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'お知らせ',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            Text('毎日ログインで10pt獲得できます!'),
            Gap(24),
            Text('あと2時間コンテンツをダウンロード可能です!'),
            Gap(24),
            Text('こちらをご覧いただくと、登録がスムーズに進みます!'),
          ],
        ),
      ),
    );
  }
}
