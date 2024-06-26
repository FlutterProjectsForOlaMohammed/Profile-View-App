import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile_app/core/utils/app_pictures.dart';
import 'package:profile_app/core/utils/text_styles.dart';

class StudentContainer extends StatelessWidget {
  const StudentContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xff000000).withOpacity(0.05)),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(47.5, 19.5, 0, 19.5),
            child: Text(
              'الطالب',
              style: TextStyles.textInter14,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Padding(
              padding: const EdgeInsets.only(right: 16.5),
              child: SvgPicture.asset(AppPictutures.studentIcon))
        ],
      ),
    ));
  }
}
