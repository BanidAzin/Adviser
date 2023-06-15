import 'package:advicer/core/core.dart';
import 'package:advicer/features/advice/advice.dart';
import 'package:flutter/material.dart';

class AdvicePage extends StatelessWidget {
  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Advicer'),
        centerTitle: false,
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              const Expanded(
                child: AdviceFiled(advice: 'Custom Advice from your senior'),
                // child: ErrorField(error: 'This a custom error to core'),
                // child: Center(
                //   child: CircularProgressIndicator.adaptive(),
                // ),
                // Text('Your advice is waiting for you...'),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Get Advice'),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
