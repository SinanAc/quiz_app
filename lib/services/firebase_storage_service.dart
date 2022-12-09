import 'dart:developer';
import 'package:get/get.dart';
import 'package:quiz_app/firebase_ref/references.dart';

class FirebaseStorageService extends GetxService {
  Future<String?> getImage(String? imgName) async {
    if (imgName == null) {
      return null;
    }
    try {
      var urlRef = firebaseStoreage
          .child("question_paper_images")
          .child('$imgName.png');
      var imgUrl = await urlRef.getDownloadURL();
      return imgUrl;
    } catch (_) {
      log('firebase storage catch=====');
      return null;
    }
  }
}
