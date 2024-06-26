import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_app/core/utils/app_pictures.dart';
import 'package:profile_app/core/utils/constants.dart';
import 'package:profile_app/features/profile/presentation/widgets/edit_button.dart';
import 'package:profile_app/features/profile/presentation/widgets/person_name_widget.dart';
import 'package:profile_app/features/profile/presentation/widgets/personal_email.dart';
import 'package:profile_app/features/profile/presentation/widgets/personal_image.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(129, 5, 73, 40),
                  child: Text(
                    "الملف الشخص",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  padding: const EdgeInsets.fromLTRB(4, 0, 4, 4),
                  icon: SvgPicture.asset(AppPictutures.menuIcon),
                ),
              ],
            ),
            const PersonalImage(),
            const SizedBox(
              height: 4,
            ),
            const PersonName(),
            const SizedBox(
              height: 4,
            ),
            const PersonEmail(),
            const SizedBox(
              height: 8,
            ),
            const EditButton(),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
