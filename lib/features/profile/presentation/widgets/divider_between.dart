import 'package:flutter/material.dart';

class DividerBetween extends StatelessWidget {
  const DividerBetween({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Divider(
        color: const Color(0xff000000).withOpacity(0.05),
        height: 0,
      ),
    );
  }
}
