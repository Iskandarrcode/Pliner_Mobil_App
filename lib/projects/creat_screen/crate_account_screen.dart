import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:may15/projects/country_number_screen/country_number.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final nameController = TextEditingController();
  String errorMessageName = "";

  final emailController = TextEditingController();
  String errorMessageEmail = "";

  final passwordController = TextEditingController();
  String errorMessagePassword = "";

  final passwordController2 = TextEditingController();
  String errorMessagePassword2 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(30),
              Text(
                "Register",
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(10),
              Text(
                "Create your account for your schedule",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey.shade500,
                ),
              ),
              const Gap(20),
              TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  errorStyle: const TextStyle(color: Colors.red),
                  prefixIcon: Icon(
                    Icons.perm_identity,
                    color: Colors.grey.shade500,
                  ),
                  label: Text(
                    "Your name",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  errorText: errorMessageName.isEmpty ? null : errorMessageName,
                ),
              ),
              const Gap(20),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  errorStyle: const TextStyle(color: Colors.red),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.grey.shade500,
                  ),
                  label: Text(
                    "Your Email",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  errorText:
                      errorMessageEmail.isEmpty ? null : errorMessageEmail,
                ),
              ),
              const Gap(20),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  // hintText: "Email Address",
                  prefixIcon: Icon(
                    Icons.key,
                    color: Colors.grey.shade500,
                  ),
                  label: Text(
                    "Password",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                  ),
                  errorText: errorMessagePassword.isEmpty
                      ? null
                      : errorMessagePassword,
                ),
              ),
              const Gap(20),
              TextField(
                controller: passwordController2,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  // hintText: "Email Address",
                  prefixIcon: Icon(
                    Icons.key,
                    color: Colors.grey.shade500,
                  ),
                  label: Text(
                    "Password",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                  ),
                  errorText: errorMessagePassword2.isEmpty
                      ? null
                      : errorMessagePassword2,
                ),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You have an account? ",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                  ZoomTapAnimation(
                    onTap: () {
                      setState(() {});
                    },
                    // ignore: prefer_const_constructors
                    child: Text(
                      "Sign in here",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(100),
              ZoomTapAnimation(
                onTap: () {
                  if (nameController.text.isEmpty ||
                      emailController.text.isEmpty ||
                      passwordController.text.isEmpty) {
                    setState(() {
                      errorMessageName = "To'g'ri ism kiriting";
                    });
                  } else {
                    setState(() {
                      errorMessageName = '';
                    });
                  }
                  if (errorMessageName.isEmpty) {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const CountryNumber();
                      },
                    ));
                  }
                },
                child: Container(
                  width: 1.sw,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 19, 108, 216),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(10),
              Center(
                child: Column(
                  children: [
                    Text(
                      "By continuing.You agree to Loana's ",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 16.sp,
                      ),
                    ),
                    const Gap(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ZoomTapAnimation(
                          child: Text(
                            "Terms of Use",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                        Text(
                          "  &  ",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        ZoomTapAnimation(
                          child: Text(
                            "Privacy Policy",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
