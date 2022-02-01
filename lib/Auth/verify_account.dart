import 'package:find_cribs_app/Auth/account_success.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyPassword extends StatelessWidget {
  const VerifyPassword({Key? key}) : super(key: key);

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
            padding: const EdgeInsets.symmetric(vertical: 150),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 120, left: 10),
                  child: Text(
                    'Verify Account',
                    style: GoogleFonts.redHatDisplay(
                        fontSize: 36, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(right: 70),
                  child: Text(
                    'A code has been sent to your registered\nemail address',
                    style: GoogleFonts.redHatDisplay(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff263238),
                    ),
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
                      hintText: '',
                      labelText: '',
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
                const SizedBox(height: 30),
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
                              builder: (_) => const AccountSuccessful()));
                    },
                    child: Text(
                      'Verify Account',
                      style: GoogleFonts.redHatDisplay(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {},
                  child: Text.rich(
                    TextSpan(
                      text: ' Didn\'t get code?  ',
                      style: GoogleFonts.redHatDisplay(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: const Color(0xffB6B6B6),
                      ),
                      children: [
                        TextSpan(
                          text: 'Resend ',
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
