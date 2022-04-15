import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormStyle extends StatelessWidget {
  String text;
  String hint;

  FormStyle(this.text, this.hint);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: GoogleFonts.montserrat(
              color: Color(0xffF8F7FD),
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
// Name
          width: 343,
          height: 42,
          child: TextFormField(
            cursorColor: Colors.white,
            style: GoogleFonts.montserrat(
                color: Colors.white, fontWeight: FontWeight.w400),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20, top: 10),
                fillColor: Color(0xff2C3545),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                hintText: hint,
                hintStyle: GoogleFonts.montserrat(
                  color: Color(0xff68687A),
                )),
          ), // Menampilkan Text Field
        ),
      ],
    );
  }
}

class FormStylePass extends StatelessWidget {
  String text;
  String hint;

  FormStylePass(this.text, this.hint);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: GoogleFonts.montserrat(
              color: Color(0xffF8F7FD),
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
// Name
          width: 343,
          height: 42,
          child: TextFormField(
            cursorColor: Colors.white,
            obscureText: true,
            style: GoogleFonts.montserrat(
                color: Colors.white, fontWeight: FontWeight.w400),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20, top: 10),
                fillColor: Color(0xff2C3545),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                hintText: hint,
                hintStyle: GoogleFonts.montserrat(
                  color: Color(0xff68687A),
                )),
          ), // Menampilkan Text Field
        ),
      ],
    );
  }
}
