import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_quiz_app/models/question_paper_model.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../firebase_ref/loading_status.dart';

import '../../firebase_ref/references.dart';
class DataUploader extends GetxController{
  void onReady(){
    uploadData();
    super.onReady();
  }
 final loadingStatus=LoadingStatus.loading.obs;
  Future<void> uploadData() async {
    loadingStatus.value=LoadingStatus.loading;//0
    final fireStore=FirebaseFirestore.instance;
  final manifestContent=await DefaultAssetBundle.of(Get.context!).loadString("AssetManifest.json");
  final Map<String,dynamic> manifestMap=jsonDecode(manifestContent);
  final papersInAssets=manifestMap.keys.where((path) =>path.startsWith("assets/DB/paper")&& path.contains(".json")).toList();
  List<QuestionPaperModel> questionPapers=[];
  var count=0;
  

  for(var paper in papersInAssets){
    String stringPaperContent=await rootBundle.loadString(paper);
    questionPapers.add(QuestionPaperModel.fromJson(json.decode(stringPaperContent)));
    //print(stringPaperContent);
  }
  //print('items ${questionPapers[0].description}');
    var batch =fireStore.batch();
  for(var paper in  questionPapers){
    count++;
    batch.set(questionPaperRF.doc(paper.id),{
      "title":paper.title,
      "image_url":paper.imageUrl,
      "description":paper.description,
      "time_seconds":paper.timeSeconds,
      "questions_count":paper.questions == null ? 0:paper.questions!.length
    });
    for(var questions in paper.questions!){
      final questionPath=questionRF(paperId: paper.id, questionId: questions.id);
      count++;
      print("nnm");
      batch.set(questionPath,{
        "question":questions.question,
        "correct_answer":questions.correctAnswer
      });
      for (var answers in questions.answers!) {

        var answerable=questionPath.collection('answers').doc(answers.identifier);
        print("hjh");
        batch.set(answerable,
            {
              "identifier": answers.identifier,
              "answer": answers.answer
            });
      }

    }
  }

  await batch.commit();
  loadingStatus.value=LoadingStatus.completed;
  }

}