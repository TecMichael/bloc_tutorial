import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
    required this.text,
    required this.img,
  }) : super(key: key);

  final String text;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 77,
          // width: 179,
          decoration: BoxDecoration(
            color: const Color(0xffF6F6F6),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(29.0),
                child: Text(
                text,
                  style: GoogleFonts.redHatDisplay(
                      fontWeight: FontWeight.w400, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 10),
                child: Image.asset(img),
              )
            ],
          ),
        ),
      ],
    );
  }
}
