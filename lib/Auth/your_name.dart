import 'package:find_cribs_app/components/listings.dart';
import 'package:find_cribs_app/components/login_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YourName extends StatelessWidget {
  const YourName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.grey.shade700),
        leading: IconButton(
          icon: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const CircleAvatar(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              backgroundColor: Color(0xffF0F7F8),
              radius: 18,
            ),
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 100),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 190, left: 0),
                  child: Text(
                    '  Your Name',
                    style: GoogleFonts.redHatDisplay(
                        fontSize: 36, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(right: 140, left: 0),
                  child: Text(
                    'Let us know who we are dealing with',
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
                  child: TextFormField(
                    controller: null,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'First Name',
                      labelText: 'First Name',
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
                const SizedBox(height: 13),
                Container(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextFormField(
                    controller: null,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                      labelText: 'Last Name',
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
                const SizedBox(height: 25),
                GestureDetector(
                  onTap: () {},
                  child: Text.rich(
                    TextSpan(
                      text: 'By tapping Register, I accept',
                      style: GoogleFonts.redHatDisplay(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: const Color(0xff263238),
                      ),
                      children: [
                        TextSpan(
                          text: ' FindCribs Term of Use',
                          style: GoogleFonts.redHatDisplay(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: const Color(0xff0072BA),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 17),
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
                      'Register',
                      style: GoogleFonts.redHatDisplay(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                const LoginButton(),
                const SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 70),
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
