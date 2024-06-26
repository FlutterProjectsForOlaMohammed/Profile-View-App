import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_app/core/utils/constants.dart';
import 'package:profile_app/features/profile/presentation/manager/cubits/cubit/show_answers_cubit.dart';
import 'package:profile_app/features/profile/presentation/view_models/profile_view_view_model.dart';

class ShowAnswers extends StatelessWidget {
  const ShowAnswers({
    super.key,
    required this.onPressed,
    required this.testId,
  });
  final void Function() onPressed;
  final int testId;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: BlocBuilder<ShowAnswersCubit, ShowAnswersState>(
            builder: (context, state) {
              if (state is ShowingAnswersState && testId == state.id ||
                  state is ShowingAnswersState &&
                      ProfileViewModel.answersIsOpened[testId]! ||
                  state is HideAnswersState &&
                      ProfileViewModel.answersIsOpened[testId]!) {
                return Icon(
                  FontAwesomeIcons.chevronDown,
                  size: 20,
                  color: kPrimaryColor,
                );
              } else {
                return Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: kPrimaryColor,
                );
              }
            },
          ),
        ),
        Text(
          "الاجابات",
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w600, fontSize: 14, color: kPrimaryColor),
        )
      ],
    );
  }
}
