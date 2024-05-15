import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:may15/projects/sms_screen/sms_screen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CountryNumber extends StatefulWidget {
  const CountryNumber({super.key});

  @override
  State<CountryNumber> createState() => _CountryNumberState();
}

class _CountryNumberState extends State<CountryNumber> {
  final numberController = TextEditingController();
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
                "Country of residance",
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(10),
              Text(
                "Add your Phone number for Verification ID",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey.shade500,
                ),
              ),
              const Gap(20),
              InternationalPhoneNumberInput(
                onInputChanged: (value) {},
              ),
              const Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Send it aother way? ",
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
                      "Email",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 19, 108, 216),
                      ),
                    ),
                  ),
                ],
              ),
              Gap(365.sp),
              ZoomTapAnimation(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const SmsScreen();
                      },
                    ));
                  });
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
                    ),
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
