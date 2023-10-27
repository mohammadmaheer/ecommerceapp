import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginscreen_maheer/loginscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => LoginView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Image
          Expanded(
            child: Image.asset(
              'assets/images/girl1.jpg',
              fit: BoxFit.cover,
            ),
          ),

          //Center animatd text
          Center(
            child: AnimatedContainer(
              duration: const Duration(
                seconds: 3,
              ),
              curve: Curves.bounceInOut,
              child: Text(
                "Fashions My Life My Style",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
