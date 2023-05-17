import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../custom_height.dart';
import 'controller.dart';
import 'data_model.dart';

final controller = Get.put(SelectedIndex());

class LeftPan extends StatelessWidget {
  const LeftPan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 40.sp,
            )),
        Text(
          'Alphabets',
          style: GoogleFonts.skranji(fontSize: 45.sp, color: Colors.pink),
        ),
        Text(
          'An alphabet is a set of graphs or characters used to represent the'
          ' phonemic structure of a language.',
          style: TextStyle(fontSize: 20.sp),
        ),
        height20(),
        const ContentShow(),
      ],
    );
  }
}

class ContentShow extends StatelessWidget {
  const ContentShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
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
            child: ListView.builder(
              itemCount: 1,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Obx(
                  () => Column(
                    children: [
                      Text(
                        fruitList[controller.selectedIndex.value]
                            .alphabet
                            .toString(),
                        style: GoogleFonts.secularOne(
                            fontSize: 120.sp, color: Colors.redAccent),
                      ),
                      GestureDetector(
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
                        child: CircleAvatar(
                          radius: 100.r,
                          backgroundColor: Colors.transparent,
                          child: Image(
                            image: AssetImage(
                              fruitList[controller.selectedIndex.value]
                                  .image
                                  .toString(),
                            ),
                          ),
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          fruitList[controller.selectedIndex.value]
                              .title
                              .toString(),
                          style: GoogleFonts.secularOne(fontSize: 30.sp),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                if (controller.selectedIndex.value != fruitList.length - 1) {
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
    );
  }
}

class AlphabetGridView extends StatelessWidget {
  const AlphabetGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 15.w, mainAxisSpacing: 15.h, crossAxisCount: 2),
      itemCount: fruitList.length,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(15.r),
          child: Material(
            child: InkWell(
              splashColor: Colors.deepPurple,
              onTap: () {
                controller.updateIndex(index);
              },
              child: Ink(
                height: 70.h,
                width: 50.w,
                decoration: BoxDecoration(
                  color: const Color(0xFFfff8f0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      offset: const Offset(0, 1),
                      blurRadius: 2.0,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    fruitList[index].alphabet.toString(),
                    style: GoogleFonts.fruktur(
                        color: Colors.deepOrange, fontSize: 45.sp),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class NumericGridView extends StatelessWidget {
  const NumericGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 15.w, mainAxisSpacing: 15.h, crossAxisCount: 2),
      itemCount: numberData.length,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(15.r),
          child: Material(
            child: InkWell(
              splashColor: Colors.deepPurple,
              onTap: () {
                controller.updateIndex(index);
              },
              child: Ink(
                height: 70.h,
                width: 50.w,
                decoration: BoxDecoration(
                  color: const Color(0xFFfff8f0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      offset: const Offset(0, 1),
                      blurRadius: 2.0,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    numberData[index].numeric.toString(),
                    style: GoogleFonts.fruktur(
                        color: Colors.deepOrange, fontSize: 45.sp),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
