import 'package:flutter/material.dart';
import 'package:profile_app/core/utils/constants.dart';
import 'package:profile_app/features/profile/presentation/widgets/question_row.dart';

class AnswersListView extends StatelessWidget {
  const AnswersListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          (MediaQuery.of(context).size.height * 0.06) * questionsList.length,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: questionsList.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              QuestionRow(index: index),
              SizedBox(
                height: 8,
                child: Center(
                  child: Divider(
                    color: const Color(0xff000000).withOpacity(0.05),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
