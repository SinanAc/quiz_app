import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

Reference get firebaseStoreage => FirebaseStorage.instance.ref();

class FirebaseStorageService extends GetxService {
  Future<String?> getImage(String? imgName) async {
    if (imgName == null) {
      return null;
    }
    try {
      final urlRef = firebaseStoreage
          .child('question_paper_images')
          .child('${imgName.toLowerCase()}.png');
      String imgUrl = await urlRef.getDownloadURL();
      return imgUrl;
    } catch (_) {
      return null;
    }
  }
}
