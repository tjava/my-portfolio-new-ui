import 'package:flutter/material.dart';
import 'package:my_portfolio_ui/pages/home_page.dart';
import 'package:my_portfolio_ui/pages/projects_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Developer Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProjectsPage(),
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        breakpoints: [
          ResponsiveBreakpoint.autoScaleDown(350, name: "SMALLMOBILE"),
          ResponsiveBreakpoint.resize(350, name: MOBILE),
          ResponsiveBreakpoint.autoScale(500, name: "LARGEMOBILE"),
          ResponsiveBreakpoint.resize(600, name: TABLET),
          ResponsiveBreakpoint.autoScale(700, name: "LARGETABLET"),
          // ResponsiveBreakpoint.autoScale(1700, name: DESKTOP),
        ],
      ),
    );
  }
}
