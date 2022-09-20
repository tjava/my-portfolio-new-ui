import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:my_portfolio_ui/models/project_data_model.dart';
import 'package:my_portfolio_ui/models/project_model.dart';
import 'package:my_portfolio_ui/services/projects_service.dart';

class ProjectsController extends GetxController {
  ProjectDataModel projectDataModel = ProjectDataModel();

  ProjectsService projectsService = ProjectsService();

  RxList<ProjectModel> projects = <ProjectModel>[].obs;

  Future getProjects() async {
    try {
      final response = await projectsService.getProjects("projects/all");
      projectDataModel = ProjectDataModel.fromJson(response.data);
      projects.value = projectDataModel.data!;
      // print(projects);
    } on DioError catch (error) {
      print(error);
    }
  }

  @override
  void onInit() async {
    super.onInit();
    await getProjects();
  }
}
