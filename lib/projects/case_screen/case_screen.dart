import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:may15/projects/creat_screen/crate_account_screen.dart';
import 'package:may15/projects/login_screen/login_screen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CaseScreen extends StatefulWidget {
  const CaseScreen({super.key});

  @override
  State<CaseScreen> createState() => _CaseScreenState();
}

class _CaseScreenState extends State<CaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
        child: Column(
          children: [
            const Gap(40),
            Center(
              child: SizedBox(
                width: 0.7.sw,
                height: 200.h,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "  Let's start your\nSchedule activity",
                        style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Gap(20.h),
                      Text(
                        "Quickly see your upcoming event, task,\n  conference calls, weather, and more",
                        style: TextStyle(
                            fontSize: 15.sp, color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 0.8.sw,
              height: 330.h,
              child: Image.asset(
                "assets/images/image5.png",
                fit: BoxFit.fill,
              ),
            ),
            const Gap(10),
            ZoomTapAnimation(
              onTap: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const RegisterScreen();
                      },
                    ),
                  );
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
                    "Create Account",
                    style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ),
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ZoomTapAnimation(
                  child: Container(
                    width: 0.4.sw,
                    height: 60.h,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(88, 190, 190, 190),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/icon2.png",
                          height: 30.h,
                          width: 30.w,
                        ),
                        const Gap(10),
                        Text(
                          "Apple",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ZoomTapAnimation(
                  child: Container(
                    width: 0.4.sw,
                    height: 60.h,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(88, 190, 190, 190),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/icon1.png",
                          height: 30.h,
                          width: 30.w,
                        ),
                        const Gap(10),
                        Text(
                          "Google",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Gap(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "You Have Account? ",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 16.sp,
                  ),
                ),
                ZoomTapAnimation(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const LoginScreen();
                          },
                        ),
                      );
                    });
                  },
                  child: Text(
                    "Log in ",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 30, 135, 221),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
