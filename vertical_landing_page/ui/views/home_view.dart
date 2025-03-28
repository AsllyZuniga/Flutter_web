import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
        
        child: Text(
          'Home',
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

