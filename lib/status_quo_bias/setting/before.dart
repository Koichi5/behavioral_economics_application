import 'package:flutter/material.dart';

class StatusQuoBiasSettingBefore extends StatelessWidget {
  const StatusQuoBiasSettingBefore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('設定'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              ListTile(
                title: const Text('プッシュ通知'),
                trailing: Switch(
                  onChanged: (value) {},
                  value: false,
                ),
              ),
              ListTile(
                title: const Text('公開アカウント'),
                trailing: Switch(
                  onChanged: (value) {},
                  value: false,
                ),
              ),
              ListTile(
                title: const Text('プロフィールの共有'),
                trailing: Switch(
                  onChanged: (value) {},
                  value: false,
                ),
              ),
              ListTile(
                title: const Text('チャットへの参加'),
                trailing: Switch(
                  onChanged: (value) {},
                  value: false,
                ),
              ),
              ListTile(
                title: const Text('メッセージ申請の許可'),
                trailing: Switch(
                  onChanged: (value) {},
                  value: false,
                ),
              ),
              ListTile(
                title: const Text('ダークモード'),
                trailing: Switch(
                  onChanged: (value) {},
                  value: false,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
