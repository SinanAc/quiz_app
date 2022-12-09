import 'package:get/get.dart';

class AuthController extends GetxController{
  @override
  void onReady() {
    initAuth();
    super.onReady();
  }

  void initAuth(){
    navigateToIntro();
  }

  void navigateToIntro(){
    Get.offAllNamed('/intro');
  }
}