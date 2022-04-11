import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rifaraclothstore/pages/homePage.dart';
import 'package:rifaraclothstore/pages/register_page.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff030E22),
        body: Padding(
          padding: const EdgeInsets.only(top: 34),
          child: Column(
            children: <Widget> [

              Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                        child: Center(
                            child: Image.asset('assetsgambar/logo_app.png', width: 200,height: 200,)
                        )
                    ),
                  )
              ),

              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Flexible(
                        child: Text(
                          "Let's Sign You In",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 14.0),
                  child: Container( // Gmail
                    width: 295,
                    height: 40,
                    child: TextFormField(
                      cursorColor: Colors.white,
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.w400
                      ),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20, top: 10),
                          fillColor: Color(0xff2C3545),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Gmail',
                          hintStyle: GoogleFonts.montserrat(
                            color: Color(0xff68687A),
                          )

                      ),
                    ), // Menampilkan Text Field
                  ),
                ),
              ),

              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container( // Password
                    width: 295,
                    height: 40,
                    child: TextFormField(
                      cursorColor: Colors.white,
                      obscureText: true, // menjadikan Password tidak terlihat
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.w400
                      ),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20, top: 10),
                          fillColor: Color(0xff2C3545),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Password',
                          hintStyle: GoogleFonts.montserrat(
                            color: Color(0xff68687A),
                          )
                      ),
                    ), // Menampilkan Text Field
                  ),
                ),
              ),

              SizedBox(height: 10,),

              Flexible(
                child: Container(
                  width: 295,
                  height: 20,
                  child: Row(
                    children: [
                      Image.asset('assetsgambar/mini_rectangle.png',
                      width: 20,
                      ),
                      SizedBox(width: 10,),
                      Text(
                        'Remember me',
                        style: GoogleFonts.montserrat(
                          color: Color(0xfff8f7fd),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 64,),
                      Text(
                        'Forgot Password?',
                        style: GoogleFonts.montserrat(
                          color: Color(0xfff8f7fd),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 40,),

              Flexible(
                child: Container(
                  width: 295,
                  height: 47,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff6c5ecf),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      )
                    ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                      },
                      child: Text(
                          'Login',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ),
                ),
              ),

              SizedBox(height: 16,),

              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have account?",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 5,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()),
                        );
                      },
                      child: Text(
                        'Register',
                        style: GoogleFonts.montserrat(
                          color: Color(0xff6c5ecf),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                    ),

                  ],
                ),
              )

            ],
          ),
        ),

      ),
    );
  }
}
