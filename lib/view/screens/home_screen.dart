import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_papers/q_paper_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionPaperController questionPaperController =
        Get.find<QuestionPaperController>();
    return Scaffold(
      body: Obx(
        () {
          return ListView.separated(
            itemBuilder: (_, index) {
              return ClipRRect(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: FadeInImage(
                    placeholder:
                        const AssetImage('assets/images/app_splash_logo.png'),
                    image: NetworkImage(
                      questionPaperController.allPaperImages[index],
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (_, __) => const SizedBox(height: 15),
            itemCount: questionPaperController.allPaperImages.length,
          );
        },
      ),
    );
  }
}
