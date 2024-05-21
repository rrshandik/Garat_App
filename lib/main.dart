import 'package:flutter/material.dart';
import 'package:flutter_tm/home/homepage.dart';
import 'package:flutter_tm/kecelakaan/kecelakaan.dart';
import 'package:flutter_tm/welcome_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: welcome_screen(),
      getPages: [
        GetPage(name: '/homepage', page: () => HomePage()),
        GetPage(name: '/kecelakaan', page: () => KecelakaanScreen())
      ],
    );
  }
}