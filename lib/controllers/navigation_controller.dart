import 'package:get/get.dart';

class NavigationController extends GetxController {
  final RxInt _indexPage = 0.obs;
  RxInt get indexPage => _indexPage;

  isActive(int indexPage) => _indexPage.value == indexPage;

  void changePage(page) {
    _indexPage.value = page;
  }
}
