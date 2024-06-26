import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonEmail extends StatelessWidget {
  const PersonEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'bakrtaha505@gmail.com',
      style: GoogleFonts.plusJakartaSans(
          fontWeight: FontWeight.w500, fontSize: 14, color: Colors.white),
    );
  }
}
