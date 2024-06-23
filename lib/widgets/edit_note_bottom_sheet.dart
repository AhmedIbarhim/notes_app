import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteBottomSheet extends StatelessWidget {
  const EditNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            Text('Edit Note'),
            SizedBox(
              height: 8,
            ),
            CustomTextField(hint: 'title'),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'content',
              maxLines: 5,
            ),
            SizedBox(
              height: 32,
            ),
            CustomButton(
              text: 'apply',
            )
          ],
        ),
      ),
    );
  }
}