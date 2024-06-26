import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:profile_app/features/profile/presentation/view_models/profile_view_view_model.dart';

part 'show_answers_state.dart';

class ShowAnswersCubit extends Cubit<ShowAnswersState> {
  ShowAnswersCubit() : super(ShowAnswersInitial());
  showingnswersMethod({required int testId}) {
    if (ProfileViewModel.answersIsOpened[testId]!) {
      ProfileViewModel.answersIsOpened.update(
          testId, (value) => !ProfileViewModel.answersIsOpened[testId]!);
      emit(HideAnswersState(id: testId));
    } else {
      ProfileViewModel.answersIsOpened.update(
          testId, (value) => !ProfileViewModel.answersIsOpened[testId]!);
      emit(ShowingAnswersState(id: testId));
    }
  }
}
