import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/screens/home/home_screen.dart';
import 'package:flutter_quiz_app/widgets/app_circle_button.dart';
import 'package:get/get.dart';

import '../../configs/themes/app_color.dart';
import '../../routes/app_routes.dart';
import '../../screens/home/home_screen.dart';
class AppIntroductionScreen extends StatelessWidget {
  const AppIntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(gradient: mainGradient(context)),
        child: Padding(
          padding:EdgeInsets.symmetric(horizontal:Get.width*0.2 ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon((Icons.star), size:65,),
              SizedBox(height:40,),
              Text("this is the study app , it has some specific question "
                  "you can use use it as you u want yo don't try to cheat "
                  "on this app it will catch you lol"),
              SizedBox(height:40,),
              AppCircleButton(
                onTap:null,
                child: Icon(Icons.arrow_forward_ios,size: 35,),
              ),
              /*MaterialButton(
                color: Colors.blue,
                onPressed: () => Get.to(HomeScreen()),
                child: Icon(Icons.arrow_forward_ios,size: 35,),
              ),*/

            ],
          ),
        ),
      ),
    );
  }
}

