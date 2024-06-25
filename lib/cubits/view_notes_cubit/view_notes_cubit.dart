import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'view_notes_state.dart';

class ViewNotesCubit extends Cubit<ViewNotesState> {
  ViewNotesCubit() : super(ViewNotesInitial());

  fetchAllNotes() async {
    emit(ViewNotesLoading());

    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      //  List<NoteModel> notes = notesBox.values.toList();
      // emit(ViewNotesSuccess(notes));

      emit(ViewNotesSuccess(notesBox.values.toList()));
    } catch (e) {
      emit(ViewNotesFailure(e.toString()));
    }
  }
}
