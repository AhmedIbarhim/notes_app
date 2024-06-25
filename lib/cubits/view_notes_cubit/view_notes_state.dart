part of 'view_notes_cubit.dart';

@immutable
sealed class ViewNotesState {}

final class ViewNotesInitial extends ViewNotesState {}

final class ViewNotesSuccess extends ViewNotesState {}
