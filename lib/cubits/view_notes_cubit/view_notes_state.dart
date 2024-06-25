part of 'view_notes_cubit.dart';

@immutable
sealed class ViewNotesState {}

final class ViewNotesInitial extends ViewNotesState {}

final class ViewNotesLoading extends ViewNotesState {}

final class ViewNotesSuccess extends ViewNotesState {
  final List<NoteModel> notes;

  ViewNotesSuccess(this.notes);
}

final class ViewNotesFailure extends ViewNotesState {
  final String errorMessage;

  ViewNotesFailure(this.errorMessage);
}
