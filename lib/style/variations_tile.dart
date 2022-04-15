import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VariationsStyle extends StatelessWidget {
  String number;

  VariationsStyle(this.number);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 59,
      height: 59,
      decoration: BoxDecoration(
          color: Color(0xff2c3545),
          border: Border(
            left: BorderSide(color: Color(0xff6c5ecf)),
            right: BorderSide(color: Color(0xff6c5ecf)),
            top: BorderSide(color: Color(0xff6c5ecf)),
            bottom: BorderSide(color: Color(0xff6c5ecf)),
          ),
          borderRadius: BorderRadius.circular(24)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            style: GoogleFonts.montserrat(
              color: Color(0xffF8F7FD),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}


class VariationsStyleNoSide extends StatelessWidget {
  String number;

  VariationsStyleNoSide(this.number);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 59,
      height: 59,
      decoration: BoxDecoration(
          color: Color(0xff2c3545),
          borderRadius: BorderRadius.circular(24)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            style: GoogleFonts.montserrat(
              color: Color(0xffF8F7FD),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}


