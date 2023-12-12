import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:GUConnect/src/models/AcademicQuestion.dart';
import 'package:flutter/foundation.dart';

class AcademicQuestionProvider extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<bool> askQuestion(AcademicQuestion question) async {
    try{
      await _firestore.collection('academicRelatedQuestions').doc(question.id).set(question.toJson());
      return true;
    }
    catch(e)
    {
      return false;
    }
  }

  Future<void> uploadImage(String id, String imageUrl) async {
    await _firestore
        .collection('academicRelatedQuestions')
        .doc(id)
        .update({'image': imageUrl});
  }

  Future<void> rateProfessor(String id, int rating) async {
    await _firestore
        .collection('academicRelatedQuestions')
        .doc(id)
        .update({'rating': rating});
  }

  Future<void> deleteQuestion(String id) async {
    await _firestore.collection('academicRelatedQuestions').doc(id).delete();
  }

  Future<List<AcademicQuestion>> getQuestions() async {
    final List<AcademicQuestion> questions = [];
    final QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await _firestore.collection('academicRelatedQuestions').get();
    querySnapshot.docs.forEach((doc) {
      questions.add(AcademicQuestion.fromJson(doc.data()));
    });
    return questions;
  }

  Future<List<AcademicQuestion>> getMyQuestions(String email) async {
    final List<AcademicQuestion> questions = [];
    final QuerySnapshot<Map<String, dynamic>> querySnapshot = await _firestore
        .collection('academicRelatedQuestions')
        .where('user.email', isEqualTo: email)
        .get();
    querySnapshot.docs.forEach((doc) {
      questions.add(AcademicQuestion.fromJson(doc.data()));
    });
    return questions;
  }
}
