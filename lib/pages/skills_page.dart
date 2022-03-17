import 'package:flutter/material.dart';
import 'package:my_portfolio_ui/constants/colors.dart';
import 'package:my_portfolio_ui/data/data.dart';
import 'package:my_portfolio_ui/widgets/custom_text.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({Key? key}) : super(key: key);

  _buildSkill(context) => Container(
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
                Condition.smallerThan(name: "LARGEMOBILE", value: 90.0)
              ]).value,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
              child: Image(
                image: AssetImage("assets/images/github.png"),
              ),
            ),
            SizedBox(height: 5),
            CustomText(
              text: "Art Store",
              size: 18,
              weight: FontWeight.bold,
              color: lightPurple,
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(right: 7, left: 7),
        child: Column(
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
            Expanded(
              child: Container(
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
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: ResponsiveValue(
                        context,
                        defaultValue: 2,
                        valueWhen: [
                          Condition.smallerThan(name: MOBILE, value: 1),
                          Condition.largerThan(name: "LARGEMOBILE", value: 3),
                          Condition.largerThan(name: TABLET, value: 4)
                        ],
                      ).value!,
                    ),
                    itemCount: 16,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildSkill(context);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
