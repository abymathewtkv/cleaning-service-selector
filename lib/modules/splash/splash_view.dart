import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.lightBlue[100],
              ),
              child: const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/images/clean.jpg"),
                backgroundColor: Colors.transparent,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Cleaning Service Selector",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
