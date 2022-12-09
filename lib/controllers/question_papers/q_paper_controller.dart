import 'dart:developer';

import 'package:get/get.dart';
import 'package:quiz_app/services/firebase_storage_service.dart';

class QuestionPaperController extends GetxController {
  final allPaperImages = <String>[].obs;
  @override
  void onReady() {
    getAllPapers();
    super.onReady();
  }

  Future<void> getAllPapers() async {
    List<String> imgNameList = [
      'biology',
      'chemistry',
      'maths',
      'physics',
    ];
    try {
      for (String img in imgNameList) {
        final imgUrl =await Get.find<FirebaseStorageService>().getImage(img);
        allPaperImages.add(imgUrl??'');
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
