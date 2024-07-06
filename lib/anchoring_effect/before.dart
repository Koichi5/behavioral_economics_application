import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AnchoringEffectBefore extends StatelessWidget {
  const AnchoringEffectBefore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('寄付金額の設定'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '寄付金額',
              style: TextStyle(fontSize: 15),
            ),
            const Gap(8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                      hintText: '寄付金額を入力してください',
                    ),
                  ),
                ),
                const Gap(8),
                const Text('円'),
              ],
            ),
            const Gap(48),
            const Text(
              '寄付されたお金は〇〇支援に使用されます。',
              style: TextStyle(fontSize: 15),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 50,
                  ),
                  child: Text('寄付する'),
                ),
              ),
            ),
            const Gap(24)
          ],
        ),
      ),
    );
  }
}
