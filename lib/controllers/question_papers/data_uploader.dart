import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:quiz_app/firebase_ref/loading_status.dart';
import 'package:quiz_app/firebase_ref/references.dart';
import 'package:quiz_app/models/question_ppr_model.dart';

class DataUploader extends GetxController {
  @override
  void onReady() {
    uploadData();
    super.onReady();
  }
  final loadingStatus = LoadingStatus.loading.obs;//loading status is observable

  Future<void> uploadData() async {
    loadingStatus.value = LoadingStatus.loading;//0
    final fireStore = FirebaseFirestore.instance;
    final manifestContent = await DefaultAssetBundle.of(Get.context!)
        .loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    // ===>> TO LOAD JSON FILES
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
        'time_seconds': paper.timeSeconds,
        'questions_count': paper.questions == null ? 0 : paper.questions?.length
      });
      for (Questions questions in paper.questions!) {
        final questionPath =
            questionRF(paperId: paper.id, questionId: questions.id);
        batch.set(questionPath, {
          'question': questions.question,
          'correct_answer': questions.correctAnswer,
        });

        for (var answer in questions.answers) {
          batch.set(questionPath.collection('answers').doc(answer.identifier), {
            'identifier': answer.identifier,
            'answer': answer.answer,
          });
        }
      }
    }
    await batch.commit();
    loadingStatus.value = LoadingStatus.completed;
  }
}
