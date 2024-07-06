import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class MereExposureEffectBefore extends HookWidget {
  MereExposureEffectBefore({super.key});
  final contents = <IconData, String>{
    Icons.account_balance: 'ホーム',
    Icons.home_repair_service: '編集',
    Icons.inbox_outlined: '削除',
    Icons.cut_outlined: '設定',
  };

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(contents.keys.toList()[currentIndex.value], size: 100),
            const Gap(24),
            Text(
              contents.values.toList()[currentIndex.value],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          currentIndex.value = index;
        },
        items: contents.entries.map((entry) {
          return BottomNavigationBarItem(
            icon: Icon(entry.key),
            label: entry.value,
          );
        }).toList(),
        currentIndex: currentIndex.value,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
