import 'package:get/get.dart';

class NavigationController extends GetxController {
  RxInt activePage = 2.obs;
  // RxInt get indexPage => _indexPage;
  RxInt hoverPage = 4.obs;

  isActive(int indexPage) => activePage.value == indexPage;
  isHovering(int indexPage) => hoverPage.value == indexPage;

  void changePage(page) {
    activePage.value = page;
  }

  onHover(int indexPage) {
    if (!isActive(indexPage)) hoverPage.value = indexPage;
  }
}
