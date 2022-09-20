import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:my_portfolio_ui/models/skill_data_model.dart';
import 'package:my_portfolio_ui/models/skill_model.dart';
import 'package:my_portfolio_ui/services/skills_service.dart';

class SkillsController extends GetxController {
  SkillDataModel skillDataModel = SkillDataModel();

  SkillsService skillsService = SkillsService();

  RxList<SkillModel> skills = <SkillModel>[].obs;

  Future getSkills() async {
    try {
      final response = await skillsService.getSkills("skills/all");
      skillDataModel = SkillDataModel.fromJson(response.data);
      skills.value = skillDataModel.data!;
      // print(skills);
    } on DioError catch (error) {
      print(error);
    }
  }

  @override
  void onInit() async {
    super.onInit();
    await getSkills();
  }
}
