import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whatsapp/Task%20for%20sat%2002-03-24/whatsapp.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Whatsapp1(),));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(child: Image.asset("assets/image/Wtsplogo.png",scale: 8,))
      ),
    );

  }
}
