import 'package:flutter/material.dart';
import 'package:my_portfolio_ui/constants/colors.dart';
import 'package:my_portfolio_ui/data/data.dart';
import 'package:my_portfolio_ui/widgets/custom_text.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SingleProjectPage extends StatelessWidget {
  const SingleProjectPage({Key? key}) : super(key: key);

  _buildSkill() {
    List<Widget> skillList = [];
    skillsList.forEach((skill) {
      skillList.add(
        Container(
          height: 30,
          width: 30,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            // color: Colors.blue,
            image: DecorationImage(
              image: AssetImage(skill),
              fit: BoxFit.fill,
            ),
          ),
        ),
      );
    });
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: skillList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(right: 7, left: 7),
        child: ListView(
          children: [
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: 40,
                    color: dark,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(bottom: 50, right: 30, left: 30),
              // margin: EdgeInsets.only(right: 10, left: 10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/projectsBackground.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Hotel Booking App",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: dark,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 25),
                  _buildSkill(),
                  SizedBox(height: 25),
                  Container(
                    height: 380.0,
                    width: 750.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image(
                      image: AssetImage("assets/images/wrench.png"),
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    height: ResponsiveValue(context,
                        defaultValue: 230.0,
                        valueWhen: [
                          Condition.smallerThan(name: "700", value: 260.0),
                          Condition.smallerThan(name: "500", value: 280.0),
                        ]).value,
                    width: 750.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Container(
                          height: 40.0,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(right: 20, left: 20),
                          decoration: BoxDecoration(
                            border: Border.all(color: darkPurple),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: CustomText(
                              text: "Go Live",
                              size: 16,
                              weight: FontWeight.w500,
                              color: darkPurple,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        CustomText(
                          text: "Description",
                          size: 20,
                          weight: FontWeight.bold,
                          color: dark,
                        ),
                        SizedBox(height: 20),
                        Container(
                          margin: EdgeInsets.only(right: 20, left: 20),
                          child: RichText(
                            text: TextSpan(
                              text:
                                  "Hotel Booking App is a mobile phone app for hotel booking and management. It's make a call to php laravel design restFULL api. design with ionic framework.",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: dark,
                              ),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 40.0,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(right: 20, left: 20),
                          decoration: BoxDecoration(
                            border: Border.all(color: darkPurple),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: CustomText(
                              text: "Github",
                              size: 16,
                              weight: FontWeight.w500,
                              color: darkPurple,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
