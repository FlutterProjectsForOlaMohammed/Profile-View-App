import 'package:flutter/material.dart';
import 'package:profile_app/features/profile/presentation/widgets/number_of_test.dart';

class AchievementTests extends StatelessWidget {
  const AchievementTests({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        NumberOfTest(
          numberOfTest: '1',
          percentage: 0.65,
          testId: 21,
        ),
        NumberOfTest(
          numberOfTest: '2',
          percentage: 0.8,
          testId: 22,
        ),
        NumberOfTest(
          numberOfTest: '3',
          percentage: 0.8,
          testId: 23,
        ),
      ],
    );
  }
}
