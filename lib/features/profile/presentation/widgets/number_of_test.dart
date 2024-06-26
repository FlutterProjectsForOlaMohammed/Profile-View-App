import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_app/core/utils/app_pictures.dart';
import 'package:profile_app/core/utils/constants.dart';
import 'package:profile_app/core/utils/text_styles.dart';
import 'package:profile_app/features/profile/presentation/manager/cubits/cubit/show_answers_cubit.dart';
import 'package:profile_app/features/profile/presentation/view_models/profile_view_view_model.dart';
import 'package:profile_app/features/profile/presentation/widgets/answers_list_view.dart';
import 'package:profile_app/features/profile/presentation/widgets/percentage_of_true_answers.dart';
import 'package:profile_app/features/profile/presentation/widgets/show_answers.dart';

class NumberOfTest extends StatelessWidget {
  const NumberOfTest({
    super.key,
    required this.numberOfTest,
    required this.percentage,
    required this.testId,
  });
  final int testId;
  final String numberOfTest;
  final double percentage;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: kPrimaryColor),
          borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "$numberOfTest ",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: kPrimaryColor),
              ),
              Text(
                "الاختبار",
                style: TextStyles.textInter14
                    .copyWith(fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                width: 8,
              ),
              SvgPicture.asset(AppPictutures.examIcon),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          PercentageOfTrueAnswers(percentage: percentage),
          ShowAnswers(
            testId: testId,
            onPressed: () {
              BlocProvider.of<ShowAnswersCubit>(context)
                  .showingnswersMethod(testId: testId);
            },
          ),
          BlocBuilder<ShowAnswersCubit, ShowAnswersState>(
            builder: (context, state) {
              if (state is ShowingAnswersState && testId == state.id ||
                  state is ShowingAnswersState &&
                      ProfileViewModel.answersIsOpened[testId]! ||
                  state is HideAnswersState &&
                      ProfileViewModel.answersIsOpened[testId]!) {
                return const AnswersListView();
              } else {
                return const SizedBox(
                  height: 0,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
