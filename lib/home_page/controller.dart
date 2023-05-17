import 'package:get/get.dart';

class SelectedIndex extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxInt pageValue = 0.obs;

  void updateIndex(index) {
    selectedIndex.value = index;
  }
}
