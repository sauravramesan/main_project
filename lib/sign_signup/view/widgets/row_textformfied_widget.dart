import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RowTextFieldWidget extends StatelessWidget {
  const RowTextFieldWidget({
    super.key,
    required this.emailImage,
    required this.emailText,
  });

  final String emailImage;
  final String emailText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
        left: 40,
      ),
      child: Row(
        children: [
          Image.asset(emailImage),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              emailText,
              style: GoogleFonts.raleway(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
