import 'package:flutter/material.dart';
import 'package:my_portfolio_ui/constants/colors.dart';
import 'package:my_portfolio_ui/data/data.dart';
import 'package:my_portfolio_ui/widgets/custom_text.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  _buildSkill({imagePath}) => Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          // color: Colors.blue,
          image: DecorationImage(
            image: AssetImage(imagePath!),
            fit: BoxFit.fill,
          ),
        ),
      );

  _buildProject(context) => Container(
        height: 400,
        margin: EdgeInsets.only(top: 20, right: 15, left: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),
              ),
              child: Image(
                image: AssetImage("assets/images/wrench.png"),
              ),
            ),
            SizedBox(height: 10),
            CustomText(
              text: "Art Store",
              size: 25,
              weight: FontWeight.bold,
              color: lightPurple,
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(right: 15, left: 15, bottom: 5),
              child: RichText(
                text: TextSpan(
                  text:
                      "Art Ecommercer art store design with laravel and mysql.",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: dark,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                color: darkPurple,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: CustomText(
                  text: "Learn More",
                  size: 18,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(right: 3, left: 3),
        child: ListView(
          children: [
            SizedBox(height: 70),
            CustomText(
              text: "Projects",
              size: 30,
              weight: FontWeight.bold,
              color: dark,
            ),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: "Take a look at what I've been working on.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: lightGrey,
                ),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSkill(imagePath: "assets/images/all.png"),
                _buildSkill(imagePath: "assets/images/django.png"),
                _buildSkill(imagePath: "assets/images/node.png"),
                _buildSkill(imagePath: "assets/images/laravel.png"),
                _buildSkill(imagePath: "assets/images/flutter.png"),
                _buildSkill(imagePath: "assets/images/gh.png"),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/projectsBackground.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        _buildProject(context),
                        _buildProject(context),
                        SizedBox(height: 20),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
