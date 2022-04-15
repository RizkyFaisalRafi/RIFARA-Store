import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rifaraclothstore/pages/homePage.dart';
import 'package:rifaraclothstore/pages/login_page.dart';

FirebaseAuth _auth = FirebaseAuth.instance;

class FirebaseApps extends StatefulWidget {
  const FirebaseApps({Key? key}) : super(key: key);

  @override
  State<FirebaseApps> createState() => _FirebasesAppAppState();
}

class _FirebasesAppAppState extends State<FirebaseApps> {
  //  Initialize Firebase App
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done){
            if(_auth.currentUser != null){
              return HomePage();
            }else{
              return LoginPage();
            }
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}