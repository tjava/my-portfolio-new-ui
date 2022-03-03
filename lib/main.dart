import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio_ui/constants/init_dependencies.dart';
import 'package:my_portfolio_ui/layout.dart';
import 'package:my_portfolio_ui/pages/home_page.dart';
import 'package:my_portfolio_ui/pages/projects_page.dart';
import 'package:my_portfolio_ui/pages/single_project_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitDependencies(),
      title: 'Developer Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: '/', page: () => Layout()),
        GetPage(
          name: '/singleProject',
          page: () => const SingleProjectPage(),
          transition: Transition.rightToLeft,
        ),
      ],
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        breakpoints: [
          ResponsiveBreakpoint.autoScaleDown(400, name: "SMALLMOBILE"),
          ResponsiveBreakpoint.resize(400, name: MOBILE),
          ResponsiveBreakpoint.autoScale(500, name: "LARGEMOBILE"),
          ResponsiveBreakpoint.resize(590, name: TABLET),
          ResponsiveBreakpoint.autoScale(600, name: TABLET),
          ResponsiveBreakpoint.resize(990, name: "SMALLDESKTOP"),
          ResponsiveBreakpoint.autoScale(1000, name: "SMALLDESKTOP"),
          ResponsiveBreakpoint.resize(1700, name: "LARGEDESKTOP"),
          ResponsiveBreakpoint.autoScale(1800, name: "XLARGEDESKTOP"),
          ResponsiveBreakpoint.tag(700, name: "NAV"),
          ResponsiveBreakpoint.tag(1200, name: DESKTOP),
        ],
      ),
    );
  }
}
