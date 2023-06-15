import 'package:flutter/material.dart';

class AdviceFiled extends StatelessWidget {
  final String advice;

  const AdviceFiled({
    super.key,
    required this.advice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Card(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '''"$advice"''',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
