import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:my_portfolio_ui/models/project_data_model.dart';
import 'package:my_portfolio_ui/models/project_model.dart';
import 'package:my_portfolio_ui/services/contact_service.dart';
import 'package:my_portfolio_ui/services/single_project_service.dart';

class SingleProjectController extends GetxController {
  ContactService contactService = ContactService();

  ProjectDataModel projectDataModel = ProjectDataModel();
  SingleProjectService singleProjectService = SingleProjectService();

  ProjectModel singleProject = ProjectModel();

  Future getSingleProject(String? slug) async {
    try {
      final response =
          await singleProjectService.getSingleProject("projects/single/$slug");
      projectDataModel = ProjectDataModel.fromJson(response.data);
      singleProject = projectDataModel.data![0];
      print(singleProject.runtimeType);
    } on DioError catch (error) {
      print(error);
    }
  }

  Future goToSingleProject({String? slug}) async {
    await getSingleProject(slug);
    Get.toNamed("/singleProject");
  }

  Future link(String? url) async => await contactService.goTo(url: url);
}
