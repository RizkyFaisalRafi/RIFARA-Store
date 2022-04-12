import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rifaraclothstore/form_style.dart';
import 'package:rifaraclothstore/pages/profile_page.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030E22),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff2C3545),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                    pageBuilder:
                                        (context, animation1, animation2) =>
                                            ProfilePage(),
                                    transitionDuration: Duration(seconds: 1)),
                              );
                            },
                            child: Image.asset(
                                'assetsgambar/back-24px-white.png')),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 90),
                        child: Container(
                          child: Center(
                            child: Text(
                              'Edit Profile',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          width: 179,
                          height: 40,
                          decoration: BoxDecoration(color: Colors.transparent),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Image.asset(
                'assetsgambar/edit_profile.png',
                width: 140,
                height: 140,
              ),
              SizedBox(
                height: 26,
              ),
              FormStyle('Name', 'Name'),
              SizedBox(
                height: 16,
              ),
              FormStyle('Email', 'Email'),
              SizedBox(
                height: 16,
              ),
              FormStylePass('Password', 'Password'),
              SizedBox(
                height: 16,
              ),
              FormStylePass('Re-Type Password', 'Re-Type Password'),
              SizedBox(
                height: 18,
              ),

              Padding(
                padding: const EdgeInsets.only(
                  top: 46,
                ),
                child: Container(
                  width: 343,
                  height: 47,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xff6C5ECF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        )),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                    },
                    child: Text(
                      'Save',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 24),
                child: Container(
                  width: 343,
                  height: 47,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        )),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                    },
                    child: Text(
                      'Discard',
                      style: GoogleFonts.montserrat(
                        color: Color(0xff6C5ECF),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
