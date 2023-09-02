import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({required this.option, required this.onTap, super.key});
  final String option;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 27, 24, 135),
            foregroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
        child: Text(
          option,
          style: GoogleFonts.outfit(
            color: Colors.white,
            fontSize: 10,
            fontWeight: FontWeight.normal,
          ),
        ));
  }
}
