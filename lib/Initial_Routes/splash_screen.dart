import 'dart:async';
import 'homepage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String id = 'SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
     Timer( const Duration(seconds: 2), () {

      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const MyHomePage()));
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 250,
              ),
              const Image(
                image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/512px-WhatsApp.svg.png'),
                height: 110,
                width: 110,
              ),
              const Spacer(),
              const Text(
                'Created By',
                style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2,
                    color: Color.fromARGB(255, 102, 102, 102)),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Shahwaiz Afzal',
                style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 2,
                    color: Colors.greenAccent[700]),
              ),
              const SizedBox(
                height: 70,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
