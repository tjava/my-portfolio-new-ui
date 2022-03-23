import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio_ui/constants/colors.dart';
import 'package:my_portfolio_ui/controllers/navigation_controller.dart';
import 'package:my_portfolio_ui/widgets/custom_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NavigationController navigationController = Get.find();
    return Container(
      margin: EdgeInsets.only(right: 7, left: 7),
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          Center(
            child: Stack(
              children: [
                Container(
                  height: 200,
                  width: 180,
                  margin: const EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/me.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: CustomText(
              text: "Taiwo Hassan",
              size: 30,
              weight: FontWeight.bold,
              color: dark,
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: CustomText(
              text: "Software Engineer",
              size: 15,
              weight: FontWeight.w500,
              color: lightGrey,
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/homepagePurple.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    text:
                        "Hi I'm Taiwo. I'm a full stack developer who loves to play around with programming and learning new things.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: dark,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () => navigationController.changePage(1),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              child: Image(
                                image: AssetImage("assets/images/wrench.png"),
                              ),
                            ),
                            SizedBox(height: 5),
                            CustomText(
                              text: "Projects",
                              size: 18,
                              weight: FontWeight.bold,
                              color: darkPurple,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            child: Image(
                              image: AssetImage("assets/images/github.png"),
                            ),
                          ),
                          SizedBox(height: 5),
                          CustomText(
                            text: "Github",
                            size: 18,
                            weight: FontWeight.bold,
                            color: darkPurple,
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () => navigationController.changePage(2),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              child: Image(
                                image: AssetImage("assets/images/cogs.png"),
                              ),
                            ),
                            SizedBox(height: 5),
                            CustomText(
                              text: "Skills",
                              size: 18,
                              weight: FontWeight.bold,
                              color: darkPurple,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
