import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/edit_note_bottom_sheet.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          context: context,
          builder: (context) {
            return const EditNoteBottomSheet();
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 24, 12, 24),
        margin: const EdgeInsets.only(top: 8),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  note.description,
                  style: GoogleFonts.poppins(
                      color: Colors.black.withOpacity(0.4), fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Text(
                    note.date,
                    style: GoogleFonts.poppins(
                      color: Colors.black.withOpacity(0.4),
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      color: Colors.black.withOpacity(0.8),
                      size: 28,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
