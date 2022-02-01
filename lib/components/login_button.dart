import 'package:find_cribs_app/Auth/welcome_back.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const WelcomeBack()));
      },
      child: Text.rich(
        TextSpan(
          text: ' Have an account?  ',
          style: GoogleFonts.redHatDisplay(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: const Color(0xffB6B6B6),
          ),
          children: [
            TextSpan(
              text: 'Login',
              style: GoogleFonts.redHatDisplay(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: const Color(0xff0072BA),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
