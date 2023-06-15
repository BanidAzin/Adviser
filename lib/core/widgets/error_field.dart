import 'package:flutter/material.dart';

class ErrorField extends StatelessWidget {
  final String error;

  const ErrorField({
    super.key,
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Icon(
          Icons.error,
          color: theme.colorScheme.error,
          size: 30,
        ),
        const SizedBox(height: 5),
        Text(
          error,
          style: theme.textTheme.bodyLarge,
        ),
      ],
    );
  }
}
