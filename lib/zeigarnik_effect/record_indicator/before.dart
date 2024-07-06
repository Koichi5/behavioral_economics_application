import 'package:flutter/material.dart';

class ZeigarnikEffectRecordIndicatorBefore extends StatelessWidget {
  const ZeigarnikEffectRecordIndicatorBefore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('学習時間'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Row(
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
            ],
          ),
        ),
      ),
    );
  }
}
