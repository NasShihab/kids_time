import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
                      'Number',
                      style: GoogleFonts.skranji(
                          fontSize: 45.sp, color: Colors.pink),
                    ),
                    Text(
                      "Numbers are special symbols that help us count, measure, and understand "
                      "the world around us. They are like magic codes that can tell us how"
                      " many things there are or how far something is. We use numbers to count "
                      "our fingers, count toys, or even count the number of friends we have. ",
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
                                          numberData[controller
                                                  .selectedIndex.value]
                                              .numeric
                                              .toString(),
                                          style: GoogleFonts.secularOne(
                                              fontSize: 120.sp,
                                              color: Colors.redAccent),
                                        ),
                                        FittedBox(
                                          child: Text(
                                            numberData[controller
                                                    .selectedIndex.value]
                                                .numericTitle
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
                                if (controller.selectedIndex.value !=
                                    fruitList.length - 1) {
                                  controller.selectedIndex.value++;
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
