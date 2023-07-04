import 'package:flutter_quiz_app/controllers/home_page_controller.dart';
import 'package:flutter_quiz_app/controllers/theme_controller.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';
import '../services/firebase _storage_service.dart';
class InitialBindings implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ThemeController());
    Get.put(AuthController(),permanent: true);
    Get.put(FirebaseStorageService());
    //Get.put(homeController(),permanent: true);

  }

}