import 'package:flutter/material.dart';
import 'package:profile_app/core/utils/constants.dart';
import 'package:profile_app/core/utils/text_styles.dart';

class GradesDetailsContainer extends StatelessWidget {
  const GradesDetailsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(bottom: 8, top: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          border: Border.all(color: kPrimaryColor)),
      child: Text(
        'الدرجات',
        style: TextStyles.textInter14,
      ),
    );
  }
}
