import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:rifaraclothstore/firebase/firebase.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  final List<PageViewModel> pages = [
    PageViewModel(
      title: 'Unleash Your Style',
      body:
          'Unleash your style with quality\nbranded clothes and\nstart buying here.',
      image: Center(
        child: Image.asset('assetsgambar/onboarding01-illustration-310px.png'),
      ),
      decoration: PageDecoration(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontFamily: 'MontserratRegular',
            height: 4,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
          bodyTextStyle: TextStyle(color: Colors.white, fontSize: 20)),
    ),
    PageViewModel(
      title: 'Arrive On Time',
      body: 'The goods will be\ndelivered on time to\nthe buyer.',
      image: Center(
        child: Image.asset('assetsgambar/onboarding02-illustration-310px.png'),
      ),
      decoration: PageDecoration(
          titleTextStyle: TextStyle(
              fontFamily: 'MontserratRegular',
              height: 4,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white),
          bodyTextStyle: TextStyle(color: Colors.white, fontSize: 20)),
    ),
    PageViewModel(
      title: 'Quality Brand',
      body: 'Quality and branded\nclothes at affordable\nprices.',
      image: Center(
        child: Image.asset(
          'assetsgambar/onboarding03-illustration-310px.png',
          height: 290,
        ),
      ),
      decoration: PageDecoration(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontFamily: 'MontserratRegular',
            height: 4,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
          bodyTextStyle: TextStyle(color: Colors.white, fontSize: 20)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
              size: Size(15, 15),
              color: Colors.white,
              activeSize: Size.square(20),
              activeColor: Color(0xff6C5ECF)),
          showDoneButton: true,
          done: const Text(
            'Done',
            style: TextStyle(fontSize: 20),
          ),
          showSkipButton: true,
          skip: const Text(
            'Skip',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          showNextButton: true,
          next: const Icon(
            Icons.arrow_forward,
            size: 20,
            color: Colors.white,
          ),
          onDone: () => onDone(context),
          curve: Curves.bounceOut,
          // Memberikan efek slide
          globalBackgroundColor: Color(0xff030E22),
        ),
      ),
    );
  }

  void onDone(context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => FirebaseApps()));
  }
}
