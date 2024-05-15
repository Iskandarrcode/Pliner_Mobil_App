import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Task2Screen extends StatefulWidget {
  const Task2Screen({super.key});

  @override
  State<Task2Screen> createState() => _Task2ScreenState();
}

class _Task2ScreenState extends State<Task2Screen> {
  final textController = TextEditingController();
  String show = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 28, 51, 91),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const Gap(40),
            Center(
              child: Text(
                show,
                style: TextStyle(
                  fontSize: 25.sp,
                  color: const Color.fromARGB(173, 255, 255, 255),
                ),
              ),
            ),
            const Gap(40),
            TextField(
              controller: textController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                label: const Text(
                  "Sekund kiriitng: ",
                  style: TextStyle(
                    color: Color.fromARGB(138, 255, 255, 255),
                  ),
                ),
              ),
            ),
            const Gap(50),
            ZoomTapAnimation(
              onTap: () {
                int number = int.parse(textController.text);
                DateTime targetDate = DateTime.now();
                targetDate = targetDate.add(
                  Duration(seconds: number + 2),
                );
                Timer.periodic(const Duration(seconds: 1), (Timer timer) {
                  Duration remaining = targetDate.difference(DateTime.now());
                  setState(() {
                    if (remaining.isNegative) {
                      show = "Timer to'xtadi";
                      timer.cancel();
                    } else {
                      show = '${remaining.inSeconds % 60}';
                    }
                  });
                });
              },
              child: Container(
                width: 120.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: const Color.fromARGB(160, 5, 20, 47),
                ),
                child: Center(
                  child: Text(
                    "Saqlash",
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: const Color.fromARGB(138, 255, 255, 255),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
