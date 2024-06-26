import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:profile_app/features/profile/presentation/widgets/achievement_test_type.dart';
import 'package:profile_app/features/profile/presentation/widgets/divider_between.dart';
import 'package:profile_app/features/profile/presentation/widgets/grades_and_student_row.dart';
import 'package:profile_app/features/profile/presentation/widgets/abilities_test_type.dart';
import 'package:profile_app/features/profile/presentation/widgets/personal_details.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: PersonalDetails()),
        const SliverToBoxAdapter(child: GradesAndStudentRow()),

        SliverList(
          delegate: SliverChildListDelegate(
            [
              const AbilitesTestType(text: "القدرات"),
              const DividerBetween(),
              const AchievementTestType(text: "التحصيلي"),
            ],
          ),
        ),

        //
      ],
    );
  }
}
