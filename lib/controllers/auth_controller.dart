import 'package:get/get.dart';

class AuthController extends GetxController {
  @override
  void onReady() {
    initAuth();
    super.onReady();
  }

  Future<void> initAuth() async {
    await Future.delayed(const Duration(seconds: 1));
    navigateToIntro();
  }

  void navigateToIntro() {
    Get.offAllNamed('/intro');
  }
}
