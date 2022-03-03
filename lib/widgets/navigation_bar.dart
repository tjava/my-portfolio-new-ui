import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio_ui/constants/colors.dart';
import 'package:my_portfolio_ui/controllers/navigation_controller.dart';
import 'package:my_portfolio_ui/widgets/custom_text.dart';

AppBar NavigationBar(BuildContext context) {
  NavigationController navigationController = Get.find();

  _buildNav({String? name, int? indexPage}) => Container(
        height: 50,
        width: 90,
        decoration: BoxDecoration(
          color: navigationController.isActive(indexPage!)
              ? darkPurple
              : Colors.transparent,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
        ),
        child: Center(
          child: CustomText(
            text: name!,
            size: 16,
            weight: FontWeight.bold,
            color: navigationController.isActive(indexPage!)
                ? Colors.white
                : darkPurple,
          ),
        ),
      );

  return AppBar(
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
            onTap: () => navigationController.changePage(0),
            child: _buildNav(name: "HOME", indexPage: 0)),
        InkWell(
            onTap: () => navigationController.changePage(1),
            child: _buildNav(name: "PROJECTS", indexPage: 1)),
        InkWell(
            onTap: () => navigationController.changePage(2),
            child: _buildNav(name: "SKILLS", indexPage: 2)),
        InkWell(
            onTap: () => navigationController.changePage(3),
            child: _buildNav(name: "CONTACT", indexPage: 3)),
      ],
    ),
    backgroundColor: Colors.white,
  );
}
