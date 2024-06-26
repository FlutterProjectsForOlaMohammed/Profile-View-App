import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_app/core/utils/constants.dart';

class QuestionRow extends StatelessWidget {
  const QuestionRow({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 4, top: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: (questionsList[index].userAnswer)
                  ? const Color(0xff22AD75)
                  : const Color(0xffC83535),
              radius: 24,
              child: (questionsList[index].userAnswer)
                  ? const Icon(
                      Icons.check,
                      color: Colors.white,
                    )
                  : const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
            ),
            CircleAvatar(
              backgroundColor: kPrimaryColor,
              child: Text(
                questionsList[index].correctAnswer,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400, color: Colors.white),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(questionsList[index].question),
                Text(
                  " السؤال",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400, fontSize: 12),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
