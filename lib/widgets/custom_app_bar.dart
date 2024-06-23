import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: GoogleFonts.poppins(
            fontSize: 28,
          ),
        ),
        const Spacer(),
        const CustomSearchIcon()
      ],
    );
  }
}
