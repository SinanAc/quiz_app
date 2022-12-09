import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/view/widgets/circle_button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.star,
              size: 65,
              color: Colors.amber,
            ),
            const SizedBox(height: 30),
            const Text(
                'This is a quiz app. You can use it as you want. If you understand how it works, you would be able to scale it. With this you will master firebase backend and flutter front end'),
            const SizedBox(height: 30),
            CircleButton(
              ontap: () {},
              child: const Icon(
                Icons.arrow_forward,
                size: 35,
              ),
            )
          ],
        ),
      )),
    );
  }
}
