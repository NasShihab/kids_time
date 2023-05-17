import 'package:get/get.dart';

class SelectedIndex extends GetxController {
   final selectedIndex = 0.obs;

  void updateIndex(index) {
    index = selectedIndex;
    index++;
  }
}
