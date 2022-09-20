import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio_ui/constants/init_dependencies.dart';
import 'package:my_portfolio_ui/layout.dart';
import 'package:my_portfolio_ui/pages/single_project_page.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
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
          ResponsiveBreakpoint.resize(400),
          ResponsiveBreakpoint.autoScale(500),
          ResponsiveBreakpoint.resize(600),
          ResponsiveBreakpoint.autoScale(700),
          ResponsiveBreakpoint.resize(800),
          ResponsiveBreakpoint.autoScale(900),
          ResponsiveBreakpoint.resize(1000),
          ResponsiveBreakpoint.autoScale(1100),
          ResponsiveBreakpoint.tag(400, name: "400"),
          ResponsiveBreakpoint.tag(430, name: "430"),
          ResponsiveBreakpoint.tag(470, name: "470"),
          ResponsiveBreakpoint.tag(500, name: "500"),
          ResponsiveBreakpoint.tag(600, name: "600"),
          ResponsiveBreakpoint.tag(700, name: "700"),
          ResponsiveBreakpoint.tag(800, name: "800"),
          ResponsiveBreakpoint.tag(900, name: "900"),
          ResponsiveBreakpoint.tag(1000, name: "1000"),
          ResponsiveBreakpoint.tag(1100, name: "1100"),
          ResponsiveBreakpoint.tag(1200, name: "1200"),
        ],
      ),
    );
  }
}
