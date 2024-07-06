import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

enum RadioValue { first, second, third, fourth }

class StatusQuoBiasPlanAfter extends StatefulWidget {
  const StatusQuoBiasPlanAfter({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _StatusQuoBiasPlanAfterState createState() => _StatusQuoBiasPlanAfterState();
}

class _StatusQuoBiasPlanAfterState extends State<StatusQuoBiasPlanAfter> {
  RadioValue _gValue = RadioValue.second;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('プラン一覧'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            RadioListTile(
              title: const Text('Basic プラン'),
              subtitle: const Text(
                '月額500円',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              value: RadioValue.first,
              groupValue: _gValue,
              onChanged: (value) => _onRadioSelected(value),
            ),
            RadioListTile(
              title: const Text('Plus プラン'),
              subtitle: const Text(
                '月額700円',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              value: RadioValue.second,
              groupValue: _gValue,
              onChanged: (value) => _onRadioSelected(value),
            ),
            RadioListTile(
              title: const Text('Pro プラン'),
              subtitle: const Text(
                '月額1,000円',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              value: RadioValue.third,
              groupValue: _gValue,
              onChanged: (value) => _onRadioSelected(value),
            ),
            RadioListTile(
              title: const Text('Premium プラン'),
              subtitle: const Text(
                '月額1,500円',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              value: RadioValue.fourth,
              groupValue: _gValue,
              onChanged: (value) => _onRadioSelected(value),
            ),
            const Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('選 択'),
              ),
            ),
            const Gap(16),
          ],
        ),
      ),
    );
  }

  _onRadioSelected(value) {
    setState(() {
      _gValue = value;
    });
  }
}
