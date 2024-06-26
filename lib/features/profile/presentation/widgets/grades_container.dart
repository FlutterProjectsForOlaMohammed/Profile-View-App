import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile_app/core/utils/app_pictures.dart';
import 'package:profile_app/core/utils/constants.dart';
import 'package:profile_app/core/utils/text_styles.dart';

class GradesContainer extends StatelessWidget {
  const GradesContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(44.5, 19.5, 0, 19.5),
            child: Text(
              'الدرجات',
              style: TextStyles.textInter14.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.5),
            child: SvgPicture.asset(AppPictutures.gradesIcon),
          )
        ],
      ),
    ));
  }
}
