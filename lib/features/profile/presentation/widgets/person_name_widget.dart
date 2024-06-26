import 'package:flutter/material.dart';

class PersonName extends StatelessWidget {
  const PersonName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'بكر',
      style: TextStyle(
          fontFamily: 'PlusJakartaSans',
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white),
    );
  }
}
