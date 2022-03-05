import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio_ui/controllers/navigation_controller.dart';
import 'package:my_portfolio_ui/pages/contact_page.dart';
import 'package:my_portfolio_ui/pages/home_page.dart';
import 'package:my_portfolio_ui/pages/projects_page.dart';
import 'package:my_portfolio_ui/pages/skills_page.dart';
import 'package:my_portfolio_ui/widgets/navigation_bar.dart';

class Layout extends StatelessWidget {
  // const Layout({ Key? key }) : super(key: key);

  final Pages = <Widget>[
    const HomePage(),
    const ProjectsPage(),
    const SkillsPage(),
    const ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    NavigationController navigationController = Get.find();
    return Obx(
      () => Scaffold(
        extendBody: true,
        body: Pages[navigationController.activePage.value],
        appBar: NavigationBar(context),
      ),
    );
  }
}
