import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/configs/themes/app_light_theme.dart';
import 'package:flutter_quiz_app/controllers/theme_controller.dart';
import 'package:flutter_quiz_app/data_uploader_screen.dart';
import 'package:flutter_quiz_app/firebase_options.dart';
import 'package:flutter_quiz_app/routes/app_routes.dart';
import 'package:flutter_quiz_app/screens/introduction/introduction.dart';
import 'package:flutter_quiz_app/screens/splash/splash_screen.dart';
import 'bindings/intial_bindings.dart';
import 'configs/themes/app_darl_themes.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  InitialBindings().dependencies();

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  GetMaterialApp(
      theme:Get.find<ThemeController>().lightTheme,
      getPages: AppRoutes.routes(),

    );


  }
}

/*Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform);
  runApp(GetMaterialApp(home:DataUploaderScreen()));
}*/

