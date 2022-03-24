import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:my_portfolio_ui/services/contact_service.dart';

class HomeController extends GetxController {
  ContactService? contactService;

  Future<void> gitHub() async {
    contactService = ContactService();
    try {
      await contactService!.goTo(url: "https://github.com/tjava");
    } on Exception catch (error) {
      print(error);
    }
  }

  // @override
  // void onInit() async {
  //   SystemChrome.setApplicationSwitcherDescription(
  //     ApplicationSwitcherDescription(
  //       label: "Developer - Taiwo Hassan",
  //     ),
  //   );
  //   super.onInit();
  // }
}
