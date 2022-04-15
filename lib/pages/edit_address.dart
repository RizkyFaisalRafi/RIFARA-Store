import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rifaraclothstore/style/form_style.dart';
import 'package:rifaraclothstore/pages/create_address.dart';

class EditAddress extends StatelessWidget {
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
                                Navigator.pop(context);
                              },
                              child:
                              Image.asset('assetsgambar/back-24px-white.png')),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 90),
                          child: Container(
                            child: Center(
                              child: Text(
                                'Edit Address',
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

                SizedBox(height: 34,),
                Column(
                  children: [
                    FormStyle('Address Title', 'Address Title'),
                    SizedBox(height: 16,),
                    FormStyle('Name', 'Name'),
                    SizedBox(height: 16,),
                    FormStyle('Phone Number', 'Phone Number'),
                    SizedBox(height: 16,),
                    FormStyle('Road Name - House Number', 'Road Name - House Number'),
                    SizedBox(height: 16,),
                    FormStyle('Province', 'Province'),
                    SizedBox(height: 16,),
                    FormStyle('City', 'City'),
                    SizedBox(height: 16,),
                    FormStyle('Subdistrict', 'Subdistrict'),
                    SizedBox(height: 16,),
                    FormStyle('Pos Number', 'Pos Number'),
                    SizedBox(height: 16,),
                    FormStyle('Additional Details', 'Additional Details'),
                    SizedBox(height: 16,),

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
                                    builder: (context) => CreateAddress()));
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
                      padding: const EdgeInsets.only(top: 16, bottom: 20),
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
                                    builder: (context) => CreateAddress()));
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
                )
                
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
