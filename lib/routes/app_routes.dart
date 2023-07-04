import '../controllers/question_paper/question_papers_controller.dart';
import '../screens/introduction/introduction.dart';
import '../screens/splash/splash_screen.dart';
import '../screens/home/home_screen.dart';
import 'package:get/get.dart';
class AppRoutes{
static List<GetPage> routes()=>[
  GetPage(name:'/',page:()=>SplashScreen()),
  GetPage(name:'/introduction',page:()=>AppIntroductionScreen()),
  GetPage(
    name: '/home',
    page: () => HomeScreen(),
  binding:BindingsBuilder((){
    Get.put(QuestionPaperController());
  })
  )
];
}