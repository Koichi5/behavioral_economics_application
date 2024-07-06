import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProspectTheoryAfter extends StatelessWidget {
  const ProspectTheoryAfter({super.key});

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
            Text('今日ログインしないと10ptが獲得できなくなります!'),
            Gap(24),
            Text('あと2時間でコンテンツがダウンロードできなくなります!'),
            Gap(24),
            Text('こちらを確認しないと、登録が進まなくなります!'),
          ],
        ),
      ),
    );
  }
}
