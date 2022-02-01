import 'package:find_cribs_app/Auth/set_pasword.dart';
import 'package:find_cribs_app/components/listings.dart';
import 'package:find_cribs_app/components/login_button.dart';
import 'package:find_cribs_app/components/next_button.dart';
import 'package:find_cribs_app/components/textfield_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 100),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 125),
                  child: Text(
                    'Create Account',
                    style: GoogleFonts.redHatDisplay(
                        fontSize: 36, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Text(
                    'Register or sign in to FindCribs to customise your searches\nand see your account details.',
                    style: GoogleFonts.redHatDisplay(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff263238),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const TextfieldForm(),
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {},
                  child: const NextButton(),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 0.3,
                      ),
                    ),
                    Text(
                      '     Or     ',
                      style: GoogleFonts.redHatDisplay(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    const Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 0.3,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                  height: 50,
                  width: 368,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: MaterialButton(
                    height: 50,
                    minWidth: double.infinity,
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/facebook.svg', height: 20),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Continue with Google',
                          style: GoogleFonts.redHatDisplay(
                              fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                Container(
                  height: 50,
                  width: 368,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: MaterialButton(
                    height: 50,
                    minWidth: double.infinity,
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/google.svg',
                            height: 16),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Continue with Facebook',
                          style: GoogleFonts.redHatDisplay(
                              fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const LoginButton(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: Listings(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
