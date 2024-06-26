part of 'show_answers_cubit.dart';

@immutable
sealed class ShowAnswersState {}

final class ShowAnswersInitial extends ShowAnswersState {}

final class HideAnswersState extends ShowAnswersState {
  final int? id;

  HideAnswersState({this.id});
}

final class ShowingAnswersState extends ShowAnswersState {
  final int id;

  ShowingAnswersState({required this.id});
}
