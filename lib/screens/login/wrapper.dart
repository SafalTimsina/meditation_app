import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/screens/home/welcome_screen.dart';
import 'package:meditation_app/screens/login/login.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(), builder: (context, snapshot){
        if (snapshot.hasData) {
          // User is signed in, navigate to home screen
          return const WelcomeScreen();
        } else {
          // User is not signed in, navigate to login screen
          return const LoginScreen();
        }
      }),
    );
  }
}