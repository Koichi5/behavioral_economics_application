import 'package:behavioral_economics/bandwagon_effect/plan.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BandwagonEffectBefore extends StatelessWidget {
  const BandwagonEffectBefore({super.key});

  static List<Plan> plans = [
    Plan(
        name: 'Basic',
        price: '月額500円',
        description: '〇〇機能が月10クレジットまで使用可能になります',
        percent: 10),
    Plan(
        name: 'Plus',
        price: '月額1000円',
        description: '〇〇機能が月20クレジット、××機能が月10クレジットまで使用可能になります',
        percent: 55),
    Plan(
        name: 'Pro',
        price: '月額1500円',
        description: '〇〇機能、××機能が回数無制限で使用可能になります',
        percent: 35),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('プラン更新'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: plans.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: [
                  Text(
                    plans[index].name,
                    style: const TextStyle(fontSize: 18),
                  ),
                  const Gap(16),
                  Text(
                    plans[index].price,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            subtitle: Text(
              plans[index].description,
              style: const TextStyle(fontSize: 12),
            ),
          ),
        ),
      ),
    );
  }
}
