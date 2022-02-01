import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordSuccessful extends StatelessWidget {
  const PasswordSuccessful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/success.png'),
              ],
            ),
            const SizedBox(height: 27),
            Text(
              'Password changed successfully',
              style: GoogleFonts.redHatDisplay(
                  fontWeight: FontWeight.w400, fontSize: 16),
            ),
            const SizedBox(height: 60),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: const Color(0xff0072BA),
              ),
              child: MaterialButton(
                height: 61,
                minWidth: 372,
                onPressed: () {},
                child: Text(
                  'Login',
                  style: GoogleFonts.redHatDisplay( 
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
            )
          ],
        ),
      ),);
  }
}