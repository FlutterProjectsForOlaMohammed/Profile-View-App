import 'package:flutter/material.dart';
import 'package:profile_app/features/profile/presentation/widgets/grades_container.dart';
import 'package:profile_app/features/profile/presentation/widgets/student_container.dart';

class GradesAndStudentRow extends StatelessWidget {
  const GradesAndStudentRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Row(
        children: [
          GradesContainer(),
          StudentContainer(),
        ],
      ),
    );
  }
}
