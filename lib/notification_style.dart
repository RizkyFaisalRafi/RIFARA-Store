import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationStyle extends StatelessWidget {
  String title;
  String text;
  String imageUrl;
  String time;

  NotificationStyle(this.title, this.text, this.imageUrl, this.time);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.montserrat(
                    color: Color(0xff6c5ecf), fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                text,
                style: GoogleFonts.montserrat(
                  color: Color(0xffCFCFCF),
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    imageUrl,
                    width: 16,
                    height: 16,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    time,
                    style: GoogleFonts.montserrat(
                      color: Color(0xffCFCFCF),
                      fontSize: 10,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 17,
        ),
        Divider(
          color: Color(0xff707070),
          thickness: 1,
        )
      ],
    );
  }
}
