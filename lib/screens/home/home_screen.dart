import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/question_paper/question_papers_controller.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionPaperController questionPaperController=Get.find();
    print(questionPaperController.allPaperImages.length);
    return Scaffold(
      body:ListView.separated(

        itemBuilder:(BuildContext context ,int index) {
          return ClipRRect(
              child:SizedBox(
                height: 200,
                width: 200,
                child: FadeInImage(
                  image: NetworkImage(questionPaperController.allPaperImages[index].toString()),
                  placeholder:const NetworkImage("https://media.istockphoto.com/id/157742535/photo/molecular-structure.jpg?s=612x612&w=0&k=20&c=Kn7SsgnlADk-U6vFdHd2tg0NfIJe34L0qg9P8hDcrvY="),
                ),
              )
          );

        },
        separatorBuilder: (BuildContext context ,int index) {
          return SizedBox(height: 20,);

        },
        itemCount:questionPaperController.allPaperImages.length,

      )
    );
  }
}
