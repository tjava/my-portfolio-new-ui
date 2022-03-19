import 'package:get/get.dart';
import 'package:my_portfolio_ui/services/contact_service.dart';

class ContactController extends GetxController {
  ContactService? contactService;

  Future<void> goTo({String? url}) async {
    contactService = ContactService();
    // try {
    //   await contactService!.goTo(url: url);
    // } on Exception catch (error) {
    //   print(error);
    // }
  }
}
