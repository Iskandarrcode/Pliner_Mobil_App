import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:may15/projects/onboarding_screens/onboarding2.dart';
import 'package:may15/projects/onboarding_screens/onboarding3.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({super.key});

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(251, 255, 255, 255),
        body: PageView(
          children: [
            Center(
              child: SizedBox(
                width: 1.sw,
                height: 0.5.sh,
                child: Image.asset("assets/images/image1.png"),
              ),
            ),
            const Onboarding2(),
            const Onboarding3(),

          ],
        ));
  }
}
