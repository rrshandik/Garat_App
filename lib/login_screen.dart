import 'package:flutter/material.dart';
import 'package:flutter_tm/home/homepage.dart';
import 'package:flutter_tm/widget/styles.dart';
import 'package:flutter_tm/widget/custom_textfield.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  bool isObscure = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  double containerHeight = 270.0; // Tinggi awal kontainer gambar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Login',
      //     style: TextStyles.title.copyWith(fontSize: 26.0),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: AnimatedContainer(
                  duration: Duration(seconds: 1), // Durasi animasi
                  height: MediaQuery.of(context).size.height * 0.4, 
                  width: MediaQuery.of(context).size.width * 0.5,   
                  child: Image.asset(
                    'assets/images/Garat.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              const SizedBox(height: 1.0),
              Text(
                'Login Akun',
                style: TextStyles.title.copyWith(fontSize: 20),
              ),
              const SizedBox(height: 16.0),
              // Input email
              CustomTextField(
                controller: emailController,
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.emailAddress,
                hint: 'email or username',
              ),
              const SizedBox(height: 16.0),
              // Input password
              CustomTextField(
                controller: passwordController,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                hint: 'password',
                isObscure: isObscure,
                hasSuffix: true,
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
              ),
              const SizedBox(height: 8.0),
              Text('Forgot Password?', style: TextStyles.body.copyWith(fontSize: 12)),
              const SizedBox(height: 24.0),
              // Tombol Login
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, '/homepage');
                    Get.to(HomePage(), transition: Transition.rightToLeft);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.red,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Login',
                      style: TextStyles.title.copyWith(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
              // Informasi Sign Up
              const SizedBox(height: 16.0),
              Center(
                child: Text(
                  'Don\'t have an account?',
                  style: TextStyles.light.copyWith(fontSize: 12.0, color: Colors.black),
                ),
              ),
              const SizedBox(height: 2.0),
              Center(
                child: Text(
                  'Sign Up',
                  style: TextStyles.body.copyWith(
                    fontSize: 12.0,
                    color: AppColors.red,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
