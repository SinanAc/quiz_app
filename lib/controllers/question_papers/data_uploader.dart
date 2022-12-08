import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:quiz_app/firebase_ref/references.dart';
import 'package:quiz_app/models/question_ppr_model.dart';

class DataUploader extends GetxController {
  @override
  void onReady() {
    uploadData();
    super.onReady();
  }

  Future<void> uploadData() async {
    final fireStore = FirebaseFirestore.instance;
    final manifestContent = await DefaultAssetBundle.of(Get.context!)
        // ===>> TO LOAD JSON FILES
        .loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    final paperInAssets = manifestMap.keys
        .where(
          (path) =>
              path.startsWith('assets/DB/paper') && path.contains('.json'),
        )
        .toList();
    List<QuestionPaperModel> questionPapers = [];
    for (String paper in paperInAssets) {
      String stringPaperContent = await rootBundle.loadString(paper);
      questionPapers
          .add(QuestionPaperModel.fromJson(json.decode(stringPaperContent)));
    }
    final WriteBatch batch = fireStore.batch();
    for (QuestionPaperModel paper in questionPapers) {
      batch.set(questioPaperRF.doc(paper.id), {
        'title': paper.title,
        'image_url': paper.imageUrl,
        'description': paper.description,
        'time_seconds':paper.timeSeconds,
        'questions_count': paper.questions==null ? 0 : paper.questions?.length
      });
    }
    await batch.commit();
  }
}
