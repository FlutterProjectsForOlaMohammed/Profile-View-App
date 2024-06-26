import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_app/core/utils/constants.dart';

class EditButton extends StatelessWidget {
  const EditButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 4, 32, 4),
          child: Text(
            'تعديل',
            style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.w900,
                fontSize: 15,
                color: kPrimaryColor),
          ),
        ),
      ),
    );
  }
}
