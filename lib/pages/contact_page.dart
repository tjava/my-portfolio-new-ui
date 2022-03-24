import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio_ui/constants/colors.dart';
import 'package:my_portfolio_ui/controllers/contact_controller.dart';
import 'package:my_portfolio_ui/widgets/custom_text.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/link.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  _buildContact(context, {String? name, String? image}) => Container(
        height: 150.0,
        width: 210.0,
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
              height: 110,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
              child: Image(
                image: AssetImage(image!),
              ),
            ),
            SizedBox(height: 5),
            CustomText(
              text: name!,
              size: 18,
              weight: FontWeight.bold,
              color: lightPurple,
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    ContactController contactController = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(right: 7, left: 7),
        child: ListView(
          children: [
            SizedBox(height: 30),
            Center(
              child: CustomText(
                text: "Contact",
                size: 30,
                weight: FontWeight.bold,
                color: dark,
              ),
            ),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: "Send me message.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: lightGrey,
                ),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/skillsPurple.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  ResponsiveRowColumn(
                    rowMainAxisAlignment: MainAxisAlignment.center,
                    layout: ResponsiveWrapper.of(context).isLargerThan("500")
                        ? ResponsiveRowColumnType.ROW
                        : ResponsiveRowColumnType.COLUMN,
                    children: [
                      ResponsiveRowColumnItem(
                        rowFlex: 1,
                        child: InkWell(
                          onTap: () => contactController.email(),
                          child: _buildContact(
                            context,
                            name: "Email",
                            image: "assets/images/email.png",
                          ),
                        ),
                      ),
                      ResponsiveRowColumnItem(
                        rowFlex: 1,
                        child: InkWell(
                          onTap: () => contactController.whatsApp(),
                          child: _buildContact(context,
                              name: "Whatsapp",
                              image: "assets/images/whatsapp.png"),
                        ),
                      ),
                    ],
                  ),
                  ResponsiveRowColumn(
                    rowMainAxisAlignment: MainAxisAlignment.center,
                    layout: ResponsiveWrapper.of(context).isLargerThan("500")
                        ? ResponsiveRowColumnType.ROW
                        : ResponsiveRowColumnType.COLUMN,
                    children: [
                      ResponsiveRowColumnItem(
                        rowFlex: 1,
                        child: InkWell(
                          onTap: () => contactController.linkedIn(),
                          child: _buildContact(context,
                              name: "LinkedIn",
                              image: "assets/images/linkedin.png"),
                        ),
                      ),
                      ResponsiveRowColumnItem(
                        rowFlex: 1,
                        child: InkWell(
                          onTap: () => contactController.gitHub(),
                          child: _buildContact(context,
                              name: "Github", image: "assets/images/gh.png"),
                        ),
                      ),
                    ],
                  ),
                  ResponsiveRowColumn(
                    rowMainAxisAlignment: MainAxisAlignment.center,
                    layout: ResponsiveWrapper.of(context).isLargerThan("500")
                        ? ResponsiveRowColumnType.ROW
                        : ResponsiveRowColumnType.COLUMN,
                    children: [
                      ResponsiveRowColumnItem(
                        rowFlex: 1,
                        child: InkWell(
                          onTap: () => contactController.faceBook(),
                          child: _buildContact(context,
                              name: "Facebook", image: "assets/images/fb.png"),
                        ),
                      ),
                    ],
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
