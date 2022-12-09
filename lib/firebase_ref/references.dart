import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

final fireStore = FirebaseFirestore.instance;
Reference get firebaseStoreage => FirebaseStorage.instance.ref();
final questioPaperRF = fireStore.collection('questionPapers');
DocumentReference questionRF({
  required String paperId,
  required String questionId,
}) {
  return questioPaperRF.doc(paperId).collection('questions').doc(questionId);
}
