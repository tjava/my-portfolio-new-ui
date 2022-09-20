import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart' hide Condition;
import 'package:my_portfolio_ui/constants/colors.dart';
import 'package:my_portfolio_ui/controllers/skills_controller.dart';
import 'package:my_portfolio_ui/widgets/custom_text.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  SkillsController skillsController = Get.find();

  _buildSkill(context, index) => Container(
        height: 150.0,
        width: 150.0,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: darkPurple),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: ResponsiveValue(context, defaultValue: 110.0, valueWhen: [
                Condition.smallerThan(name: "500", value: 90.0)
              ]).value,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
              child: Image(
                image: NetworkImage(skillsController.skills[index].image!),
              ),
            ),
            SizedBox(height: 5),
            CustomText(
              text: skillsController.skills[index].name!,
              size: 18,
              weight: FontWeight.bold,
              color: lightPurple,
            ),
          ],
        ),
      );

  @override
  void initState() {
    super.initState();
    SystemChrome.setApplicationSwitcherDescription(
      ApplicationSwitcherDescription(
        label: "What I Know - Skills",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.only(right: 7, left: 7),
          child: ListView(
            shrinkWrap: true,
            children: [
              SizedBox(height: 30),
              Center(
                child: CustomText(
                  text: "Skills",
                  size: 30,
                  weight: FontWeight.bold,
                  color: dark,
                ),
              ),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: "This is what I've worked with.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: lightGrey,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              if (skillsController.skills.isEmpty)
                Container(
                  height: 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/skillsPurple.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Center(
                    child: Image(
                      height: 80,
                      width: 80,
                      image: AssetImage("assets/images/loader.gif"),
                    ),
                  ),
                ),
              if (skillsController.skills.isNotEmpty)
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  // width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/skillsPurple.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(right: 30, left: 30),
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: ResponsiveValue(
                          context,
                          defaultValue: 2,
                          valueWhen: [
                            Condition.smallerThan(name: "400", value: 1),
                            Condition.largerThan(name: "500", value: 3),
                            Condition.largerThan(name: "900", value: 4)
                          ],
                        ).value!,
                      ),
                      itemCount: skillsController.skills.length,
                      itemBuilder: (BuildContext context, int index) {
                        return _buildSkill(context, index);
                      },
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
