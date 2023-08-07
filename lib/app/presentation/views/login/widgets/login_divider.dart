import 'package:flutter/material.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1.5,
          ),
        ),
      ],
    );
  }
}