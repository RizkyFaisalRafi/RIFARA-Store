import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rifaraclothstore/pages/payment_success.dart';

class OrderDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030E22),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                                'Order Details',
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
                  padding: const EdgeInsets.only(left: 15, top: 28, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shipping Information',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Edit address',
                        style: GoogleFonts.montserrat(
                            color: Color(0xffcfcfcf),
                            fontSize: 14,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 16.0, right: 15.0),
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
                      SizedBox(width: 12),
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

                Padding(
                  padding:
                      const EdgeInsets.only(top: 24.0, left: 15.0, right: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Order Summary',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: 364,
                        height: 115,
                        decoration: BoxDecoration(
                            color: Color(0xff2c3545),
                            borderRadius: BorderRadius.circular(16)),
                        child: Row(
                          children: [
                            Image.asset(
                              'assetsgambar/product_one.png',
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 34,
                                left: 8,
                                right: 24,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nike Air Force X',
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xfff8f7fd),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Rp1.650.000 x1',
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xfff8f7fd),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: 364,
                        height: 115,
                        decoration: BoxDecoration(
                            color: Color(0xff2c3545),
                            borderRadius: BorderRadius.circular(16)),
                        child: Row(
                          children: [
                            Image.asset(
                              'assetsgambar/product_two.png',
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 34,
                                left: 8,
                                right: 24,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Smartwatch 2.0',
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xfff8f7fd),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Rp4.500.000 x1',
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xfff8f7fd),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Payment Method',
                              style: GoogleFonts.montserrat(
                                  color: Color(0xfff8f7fd),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),

                            Text(
                              'Choose Payment',
                              style: GoogleFonts.montserrat(
                                  color: Color(0xffcfcfcf),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),


                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Color(0xff2c3545),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assetsgambar/visa.png',
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'VISA Classic',
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xffcfcfcf),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),

                                SizedBox(height: 4,),
                                Text(
                                  '****-0921',
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xffcfcfcf),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24,),
                      Text(
                        'Notes',
                        style: GoogleFonts.montserrat(
                            color: Color(0xffcfcfcf),
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 30),
                        child: Container(
                          width: 343,
                          height: 40,
                          child: TextFormField(
                            cursorColor: Colors.white,
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w400
                            ),
                            decoration: InputDecoration(
                              contentPadding:
                              EdgeInsets.only(top: 11, bottom: 11, left: 20),
                              fillColor: Color(0xff2c3545),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "Additional Notes",
                              hintStyle: GoogleFonts.montserrat(
                                color: Color(0xff68687a),
                              ),
                            ),
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff030e22),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Text(
              'Rp6.150.000',
              style: GoogleFonts.montserrat(
                color: Color(0xffF8F7FD),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 153,
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
                    MaterialPageRoute(builder: (context) => PaymentSuccess()),
                  );
                },
                child: Text(
                  'Checkout',
                  style: GoogleFonts.montserrat(
                    color: Color(0xffF8F7FD),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
