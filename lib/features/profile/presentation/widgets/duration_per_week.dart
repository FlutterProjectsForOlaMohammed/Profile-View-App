import 'package:flutter/material.dart';
import 'package:profile_app/core/utils/constants.dart';
import 'package:profile_app/core/utils/text_styles.dart';
import 'package:profile_app/features/profile/presentation/widgets/clock_icon.dart';

class DurationPerWeek extends StatelessWidget {
  const DurationPerWeek({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.05),
              borderRadius: BorderRadius.circular(26)),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Text("يومين في الاسبوع",
              style:
                  TextStyles.textPlus12.copyWith(fontWeight: FontWeight.w600)),
        ),
        const Spacer(),
        Text('شهرين',
            style: TextStyle(
                fontFamily: 'PlusJakartaSans',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5))),
        const SizedBox(
          width: 8,
        ),
        Text(
          "المدة",
          style: TextStyles.textInter14.copyWith(color: Colors.black),
        ),
        const SizedBox(
          width: 8,
        ),
        const ClockIcon(),
      ],
    );
  }
}
