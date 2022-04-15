import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:rifaraclothstore/firebase/firebase.dart';


class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  final List <PageViewModel> pages = [
    PageViewModel(
      title: 'Unleash Your Style',
      body: 'Unleash your style with quality\nbranded clothes and\nstart buying here.',

      image: Center(
        child: Image.asset('assetsgambar/onboarding01-illustration-310px.png'),
      ),
      decoration: PageDecoration(
        titleTextStyle: TextStyle(
          fontFamily: 'MontserratRegular',
          height: 4,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),

      ),
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
        ),
        // bodyTextStyle: buat warna
      ),
    ),

    PageViewModel(
      title: 'Quality Brand',
      body: 'Quality and branded\nclothes at affordable\nprices.',
      image: Center(
        child: Image.asset('assetsgambar/onboarding03-illustration-310px.png',
          height: 290,
        ),
      ),
      decoration: PageDecoration(
        titleTextStyle: TextStyle(
          fontFamily: 'MontserratRegular',
          height: 4,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
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
            size: Size(15,15),
            color: Color(0xff030E22),
            activeSize: Size.square(20),
            activeColor: Colors.red
          ),
          showDoneButton: true,
          done: const Text('Done', style: TextStyle(fontSize: 20),),
          showSkipButton: true,
          skip: const Text('Skip', style: TextStyle(
              fontSize: 20,
            ),
          ),
          showNextButton: true,
          next: const Icon(Icons.arrow_forward, size: 20,),
          onDone: () =>  onDone(context),
          curve: Curves.bounceOut, // Memberikan efek slide
          // globalBackgroundColor: Colors.blue,


        ),
      ),
    );
  }

  void onDone(context){
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => FirebaseApps()));
  }
}
