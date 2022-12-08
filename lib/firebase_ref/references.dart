import 'package:cloud_firestore/cloud_firestore.dart';

final fireStore = FirebaseFirestore.instance;
final questioPaperRF = fireStore.collection('questionPapers');