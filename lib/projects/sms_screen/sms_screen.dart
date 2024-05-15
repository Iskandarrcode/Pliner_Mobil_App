import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SmsScreen extends StatefulWidget {
  const SmsScreen({super.key});

  @override
  State<SmsScreen> createState() => _SmsScreenState();
}

class _SmsScreenState extends State<SmsScreen> {
  bool win = false;
  void showMessage() async {
    await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Column(
              children: [
                Container(
                  width: 100.w,
                  height: 108.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Icon(
                    Icons.check,
                    color: const Color.fromARGB(255, 19, 108, 216),
                    size: 40.sp,
                  ),
                ),
                const Gap(30),
                Text(
                  "Your account has active",
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(10),
                Text(
                  "Congratulation you are succes to change",
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 14.sp,
                  ),
                ),
                const Gap(10),
                Center(
                  child: Text(
                    "your profile",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
                const Gap(30),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
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
                      "OK",
                      style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
    win = true;
    setState(() {});
  }

  Widget containerNymber() {
    return ZoomTapAnimation(
      child: Container(
        width: 70.w,
        height: 55.h,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            "0",
            style: TextStyle(
              color: Colors.grey.shade400,
              fontSize: 20.sp,
            ),
          ),
        ),
      ),
    );
  }

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
                "Confirm your phone number",
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(10),
              Text(
                "Check your message, becau we send you a code for Verification",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey.shade500,
                ),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  containerNymber(),
                  containerNymber(),
                  containerNymber(),
                  containerNymber(),
                ],
              ),
              const Gap(20),
              Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    size: 17.sp,
                    color: Colors.grey.shade500,
                  ),
                  Text(
                    " Helper text",
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.grey.shade500,
                    ),
                  )
                ],
              ),
              Gap(350.sp),
              ZoomTapAnimation(
                onTap: () {
                  setState(() {
                    showMessage();
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
