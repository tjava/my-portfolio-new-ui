import 'package:flutter/material.dart';
import 'package:my_portfolio_ui/widgets/custom_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomText(text: "Home Page"),
    );
  }
}
