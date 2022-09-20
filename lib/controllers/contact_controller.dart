import 'package:get/get.dart';
import 'package:my_portfolio_ui/services/contact_service.dart';

class ContactController extends GetxController {
  ContactService? contactService;

  Future<void> email() async {
    contactService = ContactService();
    try {
      await contactService!.goTo(url: "mailto:devtaiwo@gmail.com");
    } on Exception catch (error) {
      print(error);
    }
  }

  Future<void> whatsApp() async {
    contactService = ContactService();
    try {
      await contactService!.goTo(url: "https://wa.link/2o1yw3");
    } on Exception catch (error) {
      print(error);
    }
  }

  Future<void> linkedIn() async {
    contactService = ContactService();
    try {
      await contactService!
          .goTo(url: "https://www.linkedin.com/in/taiwo-hassan-oo7");
    } on Exception catch (error) {
      print(error);
    }
  }

  Future<void> gitHub() async {
    contactService = ContactService();
    try {
      await contactService!.goTo(url: "https://github.com/tjava");
    } on Exception catch (error) {
      print(error);
    }
  }

  Future<void> faceBook() async {
    contactService = ContactService();
    try {
      await contactService!
          .goTo(url: "https://web.facebook.com/profile.php?id=100009930223777");
    } on Exception catch (error) {
      print(error);
    }
  }
}
