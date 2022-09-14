import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double textsize;
  final Color textcolor;
  final FontWeight;

  const CustomText({
    Key? key,
    required this.text,
    required this.textsize,
    required this.textcolor,
    required this.FontWeight,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: textsize,
        color: textcolor,
        fontWeight: FontWeight,
      ),
    );
  }
}
