import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_projects/assets/app_colors.dart';

class CarControl extends StatefulWidget {
  const CarControl({super.key});

  @override
  State<CarControl> createState() => _CarControlState();
}

class _CarControlState extends State<CarControl> {
  var leftDirectio = 0;
  var rightDirectio = 0;
  var forwardDirectio = 0;
  var backDirectio = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: const LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                          colors: [
                            AppColors.color1,
                            AppColors.color2,
                          ])),
                  child: IconButton(
                      onPressed: () {
                        rightDirectio = 1;
                        log(rightDirectio.toString());
                      },
                      icon: const Icon(
                        Icons.chevron_right_outlined,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: const LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                          colors: [
                            AppColors.color1,
                            AppColors.color2,
                          ])),
                  child: IconButton(
                      onPressed: () {
                        log(rightDirectio.toString());
                      },
                      icon: const Icon(
                        Icons.chevron_left_outlined,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: const LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                          colors: [
                            AppColors.color1,
                            AppColors.color2,
                          ])),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.vertical_align_top,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: const LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                          colors: [
                            AppColors.color1,
                            AppColors.color2,
                          ])),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.vertical_align_bottom_outlined,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
