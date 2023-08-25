import 'package:flutter/material.dart';
import 'package:session_4_task/login..dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
navigateToLogin();
  }
  navigateToLogin() async{
   await Future.delayed(Duration(seconds: 1), (){});
    Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreem(),));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[900],
      body: Center(child: Text(
        "talabat",
        style: TextStyle(
          fontSize: 70 , 
          color: Colors.white, 
          fontWeight: FontWeight.bold
        ),
      )),
    ) ;
  }
}