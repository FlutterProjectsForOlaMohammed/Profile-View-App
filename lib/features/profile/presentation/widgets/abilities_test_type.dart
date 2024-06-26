import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_app/core/utils/constants.dart';
import 'package:profile_app/features/profile/presentation/widgets/abilities_tests.dart';
import 'package:profile_app/features/profile/presentation/widgets/duration_per_week.dart';
import 'package:profile_app/features/profile/presentation/widgets/grades_details_container.dart';
import 'package:profile_app/features/profile/presentation/widgets/percentage_circle.dart';
import 'package:profile_app/features/profile/presentation/widgets/personal_image.dart';

class AbilitesTestType extends StatelessWidget {
  const AbilitesTestType({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40, bottom: 16),
      child: Column(
        children: [
          Row(
            children: [
              const PercentageCircle(),
              const Spacer(),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text,
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: kPrimaryColor,
                    ),
                  ),
                  Text(
                    "احمد ابو العزم",
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "محاضرات",
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      Text(
                        " 8",
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                width: 16,
              ),
              const PersonalImage(),
            ],
          ),
          const DurationPerWeek(),
          const GradesDetailsContainer(),
          const AbilitiesTests(),
        ],
      ),
    );
  }
}
