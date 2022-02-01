import 'package:find_cribs_app/Auth/forgot_password.dart';
import 'package:find_cribs_app/Auth/sign_up_screen.dart';
import 'package:find_cribs_app/Auth/verify_account.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeBack extends StatelessWidget {
  const WelcomeBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 150),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 100, left: 10),
                  child: Text(
                    'Welcome Back!',
                    style: GoogleFonts.redHatDisplay(
                        fontSize: 36, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextFormField(
                    controller: null,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Email Address',
                      labelText: 'Email Address',
                      labelStyle: const TextStyle(color: Colors.grey),
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        // borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 19),
                Container(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextFormField(
                    controller: null,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      labelStyle: const TextStyle(color: Colors.grey),
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        // borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const ForgotPassword()));
                        },
                        child: Text(
                          'Forgot Password?',
                          style: GoogleFonts.redHatDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff0072BA),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 19),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: const Color(0xff0072BA),
                  ),
                  child: MaterialButton(
                    height: 61,
                    minWidth: 372,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const VerifyPassword()));
                    },
                    child: Text(
                      'Continue',
                      style: GoogleFonts.redHatDisplay(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const SignUpScreen()));
                  },
                  child: Text.rich(
                    TextSpan(
                      text: ' New Here?  ',
                      style: GoogleFonts.redHatDisplay(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: const Color(0xffB6B6B6),
                      ),
                      children: [
                        TextSpan(
                          text: 'Sign Up',
                          style: GoogleFonts.redHatDisplay(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: const Color(0xff0072BA),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
