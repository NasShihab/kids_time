import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../custom_height.dart';
import '../controller.dart';
import '../data_model/category_model.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 15.w,
        mainAxisSpacing: 15.h,
        crossAxisCount: 2,
      ),
      itemCount: category.length,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Material(
            child: InkWell(
              splashColor: Colors.black,
              onTap: () {
                // Navigator.pushNamed(context, category[index].routes.toString());
                Get.toNamed(category[index].routes.toString());
                controller.selectedIndex.value = 0;
                controller.pageValue.value = index;
              },
              child: Ink(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF38b000),
                      Color(0xFF006494),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(1),
                      offset: const Offset(0, 5),
                      blurRadius: 5.r,
                    ),
                  ],
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(category[index].image.toString()),
                        height: 100.h,
                        width: 100.h,
                        fit: BoxFit.cover,
                      ),
                      height15(),
                      Text(
                        category[index].title.toString(),
                        style: GoogleFonts.secularOne(
                            fontSize: 30.sp,
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
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
