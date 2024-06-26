import 'package:flutter/material.dart';
import 'package:profile_app/features/profile/presentation/widgets/number_of_test.dart';

class AbilitiesTests extends StatelessWidget {
  const AbilitiesTests({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        NumberOfTest(
          numberOfTest: '1',
          percentage: 0.65,
          testId: 11,
        ),
        NumberOfTest(
          numberOfTest: '2',
          percentage: 0.8,
          testId: 12,
        ),
        NumberOfTest(
          numberOfTest: '3',
          percentage: 0.8,
          testId: 13,
        ),
      ],
    );
  }
}
