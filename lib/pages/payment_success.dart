import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rifaraclothstore/pages/homePage.dart';
import 'package:rifaraclothstore/pages/order_history.dart';

class PaymentSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030E22),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 3,
              child: Center(
                child: Image.asset(
                  'assetsgambar/payment_success-illustration.png',
                  width: 210,
                  height: 235,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: Text(
                'Payment Success',
                style: GoogleFonts.montserrat(
                    color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              flex: 2,
              child: Text(
                'hoorayyy!! your payment was successful!\njust wait for it to arrive soon!',
                style: GoogleFonts.montserrat(
                    color: Color(0xffCFCFCF), fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Flexible(
              flex: 2,
              child: Container(
                width: 295,
                height: 47,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff6C5ECF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OrderHistory()),
                    );
                  },
                  child: Text(
                    'Track Order Status',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Flexible(
              flex: 2,
              child: Container(
                width: 295,
                height: 47,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff030E22),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Text(
                    'Back to Home',
                    style: GoogleFonts.montserrat(
                        color: Color(0xff6C5ECF),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
