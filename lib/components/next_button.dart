import 'package:find_cribs_app/Auth/set_pasword.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: const Color(0xff0072BA),
      ),
      child: MaterialButton(
        height: 61,
        minWidth: 372,
        onPressed: () {
              Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const SetPassword()));
        },
        child: Text(
          'Continue',
          style: GoogleFonts.redHatDisplay(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
