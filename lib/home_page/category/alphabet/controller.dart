import 'package:get/get.dart';

import 'data_model.dart';

class SelectedIndex extends GetxController {
  RxInt selectedIndex = 0.obs;

  void updateIndex(index) {
    selectedIndex.value = index;
  }

  List<FruitData> fruitList = [
    FruitData(
        title: 'Apple',
        alphabet: 'A',
        image: 'images/fruits/apple.png',
        description: 'Apple is red'),
    FruitData(
        title: 'Banana',
        alphabet: 'B',
        image: 'images/fruits/banana.png',
        description: 'Apple is red'),
    FruitData(
        title: 'Cherry',
        alphabet: 'C',
        image: 'images/fruits/cherry.png',
        description: 'Apple is red'),
    FruitData(
        title: 'Date',
        alphabet: 'D',
        image: 'images/fruits/date.png',
        description: 'Apple is red'),
    FruitData(
        title: 'Elderberry',
        alphabet: 'E',
        image: 'images/fruits/elderberry.png',
        description: 'Apple is red'),
    FruitData(
        title: 'Fig',
        alphabet: 'F',
        image: 'images/fruits/fig.png',
        description: 'Apple is red'),
    FruitData(
        title: 'Grape',
        alphabet: 'G',
        image: 'images/fruits/grape.png',
        description: 'Apple is red'),
    FruitData(
        title: 'Huckleberry',
        alphabet: 'H',
        image: 'images/fruits/huckleberry.png',
        description: 'Apple is red'),
    FruitData(
        title: 'I',
        alphabet: 'I',
        image: 'images/a.png',
        description: 'Apple is red'),
    FruitData(
        title: 'Jack fruit',
        alphabet: 'J',
        image: 'images/fruits/jackfruit.png',
        description: 'Apple is red'),
    FruitData(
        title: 'Kumquat',
        alphabet: 'K',
        image: 'images/fruits/kumquat.png',
        description: 'Apple is red'),
    FruitData(
        title: 'Lemon',
        alphabet: 'L',
        image: 'images/fruits/lemon.png',
        description: 'Apple is red'),
    FruitData(
        title: 'Mango',
        alphabet: 'M',
        image: 'images/fruits/mango.png',
        description: 'Apple is red'),
    FruitData(
        title: 'N',
        alphabet: 'N',
        image: 'images/fruits/apple.png',
        description: 'Apple is red'),
    FruitData(
        title: 'Orange',
        alphabet: 'O',
        image: 'images/fruits/orange.png',
        description: 'Apple is red'),
    FruitData(
        title: 'Pineapple',
        alphabet: 'P',
        image: 'images/fruits/pineapple.png',
        description: 'Apple is red'),
    FruitData(
        title: 'Quince',
        alphabet: 'Q',
        image: 'images/fruits/quince.png',
        description: 'Apple is red'),
    FruitData(
        title: 'R',
        alphabet: 'R',
        image: 'images/fruits/apple.png',
        description: 'Apple is red'),
    FruitData(
        title: 'Strawberry',
        alphabet: 'S',
        image: 'images/fruits/strawberry.png',
        description: 'Apple is red'),
    FruitData(
        title: 'T',
        alphabet: 'T',
        image: 'images/fruits/apple.png',
        description: 'Apple is red'),
    FruitData(
        title: 'U',
        alphabet: 'U',
        image: 'images/fruits/apple.png',
        description: 'Apple is red'),
    FruitData(
        title: 'V',
        alphabet: 'V',
        image: 'images/fruits/apple.png',
        description: 'Apple is red'),
    FruitData(
        title: 'Watermelon',
        alphabet: 'W',
        image: 'images/fruits/apple.png',
        description: 'Apple is red'),
    FruitData(
        title: 'X',
        alphabet: 'X',
        image: 'images/fruits/apple.png',
        description: 'Apple is red'),
    FruitData(
        title: 'Y',
        alphabet: 'Y',
        image: 'images/fruits/apple.png',
        description: 'Apple is red'),
    FruitData(
        title: 'Z',
        alphabet: 'Z',
        image: 'images/fruits/apple.png',
        description: 'Apple is red'),
  ];
}
