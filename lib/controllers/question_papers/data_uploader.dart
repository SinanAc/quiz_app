import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataUploader extends GetxController {
  @override
  void onReady() {
    uploadData();
    super.onReady();
  }

  Future<void> uploadData() async {
    final manifestContent = await DefaultAssetBundle.of(Get.context!)
        .loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    final paperInAssets = manifestMap.keys
        .where(
          (path) =>
              path.startsWith('assets/DB/paper') && path.contains('.json'),
        )
        .toList();
    log(paperInAssets.toString());
  }
}
