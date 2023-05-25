import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controller.dart';
import '../data_model/fruit_alphabet_model.dart';
import '../data_model/number_model.dart';
import '../data_model/shape_model.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 15.w, mainAxisSpacing: 15.h, crossAxisCount: 2),
      itemCount: controller.pageValue.value == 0
          ? fruitList.length
          : controller.pageValue.value == 1
              ? numberData.length
              : controller.pageValue.value == 2
                  ? numberData.length
                  : shapeData.length,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(15.r),
          child: Material(
            child: InkWell(
              splashColor: Colors.deepPurple,
              onTap: () {
                controller.updateIndex(index);
              },
              child: Obx(() {
                return Ink(
                  height: 70.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    color: index == controller.selectedIndex.value
                        ? Colors.deepPurple
                        : const Color(0xFFfff8f0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.9),
                        offset: const Offset(0, 2),
                        blurRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Obx(() {
                      return Text(
                        // numberData[index].numeric.toString(),
                        controller.pageValue.value == 0
                            ? fruitList[index].alphabet.toString()
                            : controller.pageValue.value == 1
                                ? numberData[index].numeric.toString()
                                : controller.pageValue.value == 2
                                    ? numberData[index].numeric.toString()
                                    : shapeData[index].shape.toString(),
                        style: GoogleFonts.fruktur(
                            color: index == controller.selectedIndex.value
                                ? Colors.tealAccent
                                : Colors.deepOrange,
                            fontSize: 45.sp),
                      );
                    }),
                  ),
                );
              }),
            ),
          ),
        );
      },
    );
  }
}
