import 'package:flutter/material.dart';

class PercentageOfTrueAnswers extends StatelessWidget {
  const PercentageOfTrueAnswers({super.key, required this.percentage});
  final double percentage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform.flip(
          flipX: true,
          child: LinearProgressIndicator(
            backgroundColor: const Color(0xff22AD75).withOpacity(0.05),
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xff22AD75),
            value: percentage,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "من",
                  style: TextStyle(
                      fontFamily: 'PlusJakartaSans',
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff22AD75)),
                ),
                Text(
                  "100%",
                  style: TextStyle(
                      fontFamily: 'PlusJakartaSans',
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff22AD75)),
                ),
              ],
            ),
            Text(
              "${(percentage * 100).toInt()}%",
              style: const TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff22AD75)),
            ),
          ],
        ),
      ],
    );
  }
}
