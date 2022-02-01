import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Listings extends StatelessWidget {
  const Listings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Not ready to register?',
          style: GoogleFonts.redHatDisplay(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: const Color(0xff263238),
          ),
        ),
        const SizedBox(height: 09),
        Text(
          'Check out our listings first.',
          style: GoogleFonts.redHatDisplay(
              color: const Color(0xff0072BA),
              fontSize: 14,
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
