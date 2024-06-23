import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 24, 12, 24),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Title',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                '<<<<<<<<<<subtitle>>>>>>>>>>>',
                style: GoogleFonts.poppins(
                    color: Colors.black.withOpacity(0.4), fontSize: 16),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Colors.black.withOpacity(0.8),
                size: 28,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(
              '<<<date>>>',
              style: GoogleFonts.poppins(
                color: Colors.black.withOpacity(0.4),
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
