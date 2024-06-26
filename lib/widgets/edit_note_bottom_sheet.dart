import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/view_notes_cubit/view_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_list_view.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteBottomSheet extends StatefulWidget {
  const EditNoteBottomSheet({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteBottomSheet> createState() => _EditNoteBottomSheetState();
}

class _EditNoteBottomSheetState extends State<EditNoteBottomSheet> {
  String? title, description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            const Text('Edit Note'),
            const SizedBox(
              height: 8,
            ),
            CustomTextField(
              hint: widget.note.title,
              onChanged: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: widget.note.description,
              maxLines: 5,
              onChanged: (value) {
                description = value;
              },
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              height: 50,
              child: EditColorsListView(
                note: widget.note,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            CustomButton(
              text: 'apply',
              onTap: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.description =
                    description ?? widget.note.description;
                widget.note.save();
                BlocProvider.of<ViewNotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
