// import 'package:closest_hospital/controllers/state_hospitals_controller.dart';
import 'package:get/get.dart';
import 'package:my_portfolio_ui/controllers/contact_controller.dart';
import 'package:my_portfolio_ui/controllers/home_controller.dart';
import 'package:my_portfolio_ui/controllers/navigation_controller.dart';
import 'package:my_portfolio_ui/controllers/projects_controller.dart';
import 'package:my_portfolio_ui/controllers/single_project_controller.dart';
import 'package:my_portfolio_ui/controllers/skills_controller.dart';

class InitDependencies implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavigationController());
    Get.lazyPut(() => ContactController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ProjectsController());
    Get.lazyPut(() => SingleProjectController());
    Get.lazyPut(() => SkillsController());
  }
}
