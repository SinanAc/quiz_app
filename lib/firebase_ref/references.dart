import 'package:cloud_firestore/cloud_firestore.dart';

final fireStore = FirebaseFirestore.instance;
final questioPaperRF = fireStore.collection('questionPapers');
DocumentReference questionRF({
  required String paperId,
  required String questionId,
}) {
  return questioPaperRF.doc(paperId).collection('questions').doc(questionId);
}
