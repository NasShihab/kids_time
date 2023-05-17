import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kids_time/home_page/data_model/shape_model.dart';
import '../../../custom_height.dart';
import '../../data_model/number_model.dart';
import '../alphabet/alphabet_widget.dart';
import '../../data_model/fruit_alphabet_model.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFddf9c1),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          size: 40.sp,
                        )),
                    Text(
                      controller.pageValue.value == 0
                          ? 'Alphabet'
                          : controller.pageValue.value == 1
                              ? 'Number'
                              : controller.pageValue.value == 2
                                  ? 'Reading'
                                  : 'Shapes',
                      style: GoogleFonts.skranji(
                          fontSize: 45.sp, color: Colors.pink),
                    ),
                    Text(
                      controller.pageValue.value == 0
                          ? desList[0].toString()
                          : controller.pageValue.value == 1
                              ? desList[1].toString()
                              : controller.pageValue.value == 2
                                  ? desList[2].toString()
                                  : desList[3].toString(),
                      style: TextStyle(fontSize: 20.sp),
                    ),
                    height20(),
                    Flexible(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                if (controller.selectedIndex.value != 0) {
                                  controller.selectedIndex.value--;
                                }
                              },
                              icon: Icon(
                                Icons.arrow_back_ios_new,
                                size: 30.sp,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: GestureDetector(
                              onHorizontalDragEnd: (DragEndDetails details) {
                                if (details.primaryVelocity! > 0) {
                                  if (controller.selectedIndex.value != 0) {
                                    controller.selectedIndex.value--;
                                  }
                                } else {
                                  if (controller.selectedIndex.value !=
                                      fruitList.length - 1) {
                                    controller.selectedIndex.value++;
                                  }
                                }
                              },
                              child: ListView.builder(
                                itemCount: 1,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Obx(
                                    () => Column(
                                      children: [
                                        Text(
                                          controller.pageValue.value == 0
                                              ? fruitList[controller
                                                      .selectedIndex.value]
                                                  .alphabet
                                                  .toString()
                                              : controller.pageValue.value == 1
                                                  ? numberData[controller
                                                          .selectedIndex.value]
                                                      .numeric
                                                      .toString()
                                                  : controller.pageValue
                                                              .value ==
                                                          2
                                                      ? numberData[controller
                                                              .selectedIndex
                                                              .value]
                                                          .numeric
                                                          .toString()
                                                      : shapeData[controller
                                                              .selectedIndex
                                                              .value]
                                                          .shape
                                                          .toString(),
                                          style: GoogleFonts.secularOne(
                                              fontSize: 120.sp,
                                              color: Colors.redAccent),
                                        ),
                                        controller.pageValue.value == 0
                                            ? CircleAvatar(
                                                radius: 100.r,
                                                backgroundColor:
                                                    Colors.transparent,
                                                child: Image(
                                                  image: AssetImage(
                                                    fruitList[controller
                                                            .selectedIndex
                                                            .value]
                                                        .image
                                                        .toString(),
                                                  ),
                                                ),
                                              )
                                            : const SizedBox.shrink(),
                                        FittedBox(
                                          child: Text(
                                            controller.pageValue.value == 0
                                                ? fruitList[controller
                                                        .selectedIndex.value]
                                                    .title
                                                    .toString()
                                                : controller.pageValue.value ==
                                                        1
                                                    ? numberData[controller
                                                            .selectedIndex
                                                            .value]
                                                        .numericTitle
                                                        .toString()
                                                    : controller.pageValue
                                                                .value ==
                                                            2
                                                        ? numberData[controller
                                                                .selectedIndex
                                                                .value]
                                                            .numericTitle
                                                            .toString()
                                                        : shapeData[controller
                                                                .selectedIndex
                                                                .value]
                                                            .title
                                                            .toString(),
                                            style: GoogleFonts.secularOne(
                                                fontSize: 35.sp,
                                                color: Colors.green[900]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                if (controller.pageValue.value == 0) {
                                  if (controller.selectedIndex.value !=
                                      fruitList.length - 1) {
                                    controller.selectedIndex.value++;
                                  }
                                }
                               else if (controller.pageValue.value == 1) {
                                  if (controller.selectedIndex.value !=
                                      numberData.length - 1) {
                                    controller.selectedIndex.value++;
                                  }
                                }
                                else if (controller.pageValue.value == 2) {
                                  if (controller.selectedIndex.value !=
                                      numberData.length - 1) {
                                    controller.selectedIndex.value++;
                                  }
                                }
                                else if (controller.pageValue.value == 3) {
                                  if (controller.selectedIndex.value !=
                                      shapeData.length - 1) {
                                    controller.selectedIndex.value++;
                                  }
                                }
                              },
                              icon: Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 30.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              width10(),
              // const Expanded(flex: 2, child: AlphabetGridView()),
              const Expanded(
                flex: 2,
                child: NumericGridView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<String> titleList = ['XAlphabet', 'XNumber', 'XReading', 'XShapes'];
List<String> desList = [
  'X An alphabet is a set of graphs or characters used to represent the'
      ' phonemic structure of a language.',
  "X Numbers are special symbols that help us count, measure, and understand "
      "the world around us. They are like magic codes that can tell us how"
      " many things there are or how far something is. We use numbers to count "
      "our fingers, count toys, or even count the number of friends we have. ",
  'X Reading',
  'X Shapes',
];