import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({super.key});

  @override
  State<Onboarding2> createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        body: Column(
          children: [
            const Gap(30),
            Center(
              child: SizedBox(
                width: 1.sw,
                height: 0.5.sh,
                child: Image.asset("assets/images/image2.png"),
              ),
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                containerScrol1(),
                const Gap(5),
                containerScrol2(),
                const Gap(5),
                containerScrol2(),
              ],
            ),
            const Gap(50),
            Column(
              children: [
                const Gap(10),
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Set Your Schedule",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.sp,
                        ),
                      ),
                      const Gap(8),
                      Text(
                        "Quickly see your upcoming event, task,\n  conference calls, weather, and more",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(30),
                ZoomTapAnimation(
                  onTap: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const Placeholder();
                        },
                      ));
                    });
                  },
                  child: Container(
                    width: 1.sw,
                    height: 60.h,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 19, 108, 216),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget containerScrol1() {
  return Container(
    width: 30.w,
    height: 5.h,
    decoration: BoxDecoration(
        color: const Color.fromARGB(255, 10, 122, 213),
        borderRadius: BorderRadius.circular(22)),
  );
}

Widget containerScrol2() {
  return Container(
    width: 5.w,
    height: 5.h,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 10, 122, 213),
      borderRadius: BorderRadius.circular(22),
    ),
  );
}
