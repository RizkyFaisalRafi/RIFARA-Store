import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rifaraclothstore/pages/edit_address.dart';

class CreateAddress extends StatelessWidget {

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
                                'My Address',
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

                Padding(
                  padding: const EdgeInsets.only(top: 45, left: 16, right: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Address 1',
                            style: GoogleFonts.montserrat(
                              color: Color(0xffF8F7FD),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Image.asset(
                            'assetsgambar/right_arrow.png',
                            width: 16,
                            height: 16,
                          )
                        ],
                      ),

                      Padding(
                        padding:
                        const EdgeInsets.only(top: 20.0,),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xff2C3545),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assetsgambar/map-16px-white.png',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 14),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rizky Faisal Rafi',
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xfff8f7fd),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '(+62) 876 1234 1234',
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xfff8f7fd),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Toko Mas - Jl. Nangka Sari No. 24D,\nKecamatan Ngoy Kota Surabaya',
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xffCFCFCF),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24,),
                Divider(
                  color: Color(0xfff8f7fd),
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Address 2',
                            style: GoogleFonts.montserrat(
                              color: Color(0xffF8F7FD),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Image.asset(
                            'assetsgambar/right_arrow.png',
                            width: 16,
                            height: 16,
                          )
                        ],
                      ),

                      Padding(
                        padding:
                        const EdgeInsets.only(top: 20.0,),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xff2C3545),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assetsgambar/map-16px-white.png',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 14),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rizky Faisal Rafi',
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xfff8f7fd),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '(+62) 876 1234 1234',
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xfff8f7fd),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Jl. Durian No. 13A, Kecamatan Marpoyan\nKota Bandung',
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xffCFCFCF),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24,),
                Divider(
                  color: Color(0xfff8f7fd),
                  thickness: 1,
                ),

                SizedBox(height: 235,),
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
                                builder: (context) => EditAddress()));
                      },
                      child: Text(
                        'Create New Address',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
