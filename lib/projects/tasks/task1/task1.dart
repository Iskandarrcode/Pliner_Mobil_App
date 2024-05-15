import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:may15/projects/tasks/task2/task2.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Task1Screen extends StatefulWidget {
  const Task1Screen({super.key});

  @override
  State<Task1Screen> createState() => _Task1ScreenState();
}

class _Task1ScreenState extends State<Task1Screen> {
  String show = "";
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 28, 51, 91),
      body: PageView(
        children: [
          Padding(
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
                      "Haroratni kiriitng: ",
                      style: TextStyle(
                        color: Color.fromARGB(138, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
                const Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ZoomTapAnimation(
                      onTap: () {
                        setState(() {
                          show = (double.parse(textController.text) + 273.15)
                              .toString();
                        });
                      },
                      child: Container(
                        width: 120.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: const Color.fromARGB(160, 5, 20, 47),
                        ),

                        ///(32 °F − 32) × 5/9 = 0 °C
                        child: Center(
                          child: Text(
                            "°F  ->  °C",
                            style: TextStyle(
                              fontSize: 20.sp,
                              color: const Color.fromARGB(138, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ZoomTapAnimation(
                      onTap: () {
                        setState(() {
                          show = (double.parse(textController.text) - 273.15)
                              .toString();
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
                            "°C  ->  °F",
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
                const Gap(30),
                ZoomTapAnimation(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Task1Screen();
                          },
                        ),
                      );
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
                        "Clear",
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
          const Task2Screen(),
        ],
      ),
    );
  }
}
