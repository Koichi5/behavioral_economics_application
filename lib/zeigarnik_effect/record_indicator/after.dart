import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ZeigarnikEffectRecordIndicatorAfter extends StatelessWidget {
  const ZeigarnikEffectRecordIndicatorAfter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('学習時間'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text('目標学習時間'),
                      Text(
                        '4時間',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('学習時間'),
                      Text(
                        '2.5時間',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('残り学習時間'),
                      Text(
                        '1.5時間',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
              const Gap(32),
              SizedBox(
                height: 200,
                width: 200,
                child: CircularPercentIndicator(
                  radius: 100.0,
                  lineWidth: 8.0,
                  percent: 0.625,
                  center: const Text("62.5%"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
