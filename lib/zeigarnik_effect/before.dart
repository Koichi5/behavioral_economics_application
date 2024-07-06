import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ZeigarnikEffectBefore extends StatelessWidget {
  const ZeigarnikEffectBefore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ユーザー登録'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 32,
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    hintText: 'メールアドレス',
                  ),
                ),
              ),
              const Gap(24),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    hintText: 'パスワード',
                  ),
                ),
              ),
              const Gap(24),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    hintText: 'パスワード（確認）',
                  ),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 50,
                  ),
                  child: Text('次へ'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
