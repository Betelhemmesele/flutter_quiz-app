import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_quiz_app/services/firebase%20_storage_service.dart';
import 'package:get/get.dart';


class QuestionPaperController extends GetxController {
  final allPaperImages = <String>[];
  List<String> imgName = [
    "photo_2019-07-18_07-40-20.jpg",
    "photo_2022-05-16_04-27-20.jpg",
    "photo_2022-02-18_20-40-08.jpg",
    "photo_2019-12-06_04-16-05.jpg",
  ];

  @override
  void onReady() {
    getAllPapers();
    super.onReady();
  }


  Future<void> getAllPapers() async {
    try {
      for (var img in imgName) {
        final imgUrl = await FirebaseStorage.instance.ref().child(img).getDownloadURL();
        allPaperImages.add(imgUrl!);
      }
    } catch (e) {
      print(e);
    }
    print(allPaperImages);
  }
}
