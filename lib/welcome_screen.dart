import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_tm/login_screen.dart';
import 'package:flutter_tm/styles.dart';
import 'package:get/get.dart';

class welcome_screen extends StatefulWidget {
  const welcome_screen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<welcome_screen> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Get.to(LoginScreen());
    });

    Future.delayed(Duration.zero, () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: _opacity,
              child: Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Mobporite',
                      style: TextStyles.title.copyWith(
                        color: Colors.green,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/images/Landing.png',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
