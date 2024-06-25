import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/view_notes_cubit/view_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewNotesCubit, ViewNotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<ViewNotesCubit>(context).fetchAllNotes()!;

        return ListView.builder(
          itemBuilder: (context, index) {
            return NoteItem(note: notes[index]);
          },
          itemCount: notes.length,
        );
      },
    );
  }
}
