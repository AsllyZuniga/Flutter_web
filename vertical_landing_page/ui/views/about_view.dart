import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pinkAccent,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
        
        child: Text(
          'About',
          style: GoogleFonts.montserrat(
            fontSize: 80,
            fontWeight: FontWeight.bold, // Asegúrate de especificar el peso
          ),
        ),
        ),
      ),
    );
  }
}

