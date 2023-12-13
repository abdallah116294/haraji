import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haraji/presentation/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  goNext() => Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => const Directionality(
          textDirection: TextDirection.rtl, child: const HomScreen())));
  startDely() {
    _timer = Timer(const Duration(milliseconds: 4000), () {
      goNext();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startDely();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
        "assets/images/haraji.jpeg",
      ),
      fit: BoxFit.fill,
      )),
      child:  Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white
            ),
          child: Text(         
            "جوابات الاسطي حراجي ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32.sp, color: Colors.black, shadows:const  [
                Shadow(
                  blurRadius: 5.0,
                  color: Colors.white,
                  offset: Offset(1.0, 1.0))
            ]
            ),
          ),
        ),
      ),
    ));
  }
}
