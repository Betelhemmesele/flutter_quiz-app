import 'package:get/get.dart';
class homeController extends GetxController {
  @override
  void onReadyHome() {
    initHome();
    super.onReady();
  }

  void initHome() async {
    await Future.delayed(const Duration(seconds: 7));
    navigateToHome();
  }

  void navigateToHome() {
    Get.offAllNamed('/home');
  }
}