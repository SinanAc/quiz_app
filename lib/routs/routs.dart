import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_papers/q_paper_controller.dart';
import 'package:quiz_app/view/screens/home_screen.dart';
import 'package:quiz_app/view/screens/intro_screen.dart';
import 'package:quiz_app/view/screens/splash_screen.dart';

class AppRouts {
  static List<GetPage> routs() {
    return [
      GetPage(name: '/', page: () => const SplashScreen()),
      GetPage(name: '/intro', page: () => const IntroScreen()),
      GetPage(
        name: '/home',
        page: () => const HomeScreen(),
        binding: BindingsBuilder(
          () {
            Get.put(QuestionPaperController());
          },
        ),
      ),
    ];
  }
}
