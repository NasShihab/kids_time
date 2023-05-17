import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_time/home_page/data_model/category_model.dart';

import '../../custom_height.dart';
import 'alphabet/alphabet_widget.dart';


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
              splashColor: Colors.pink,
              onTap: () {
                // Navigator.pushNamed(context, category[index].routes.toString());
                Get.toNamed(category[index].routes.toString());
                controller.selectedIndex.value = 0;
              },
              child: Ink(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                  color: const Color(0xFFf6fff8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      offset: const Offset(0, 1),
                      blurRadius: 2.0,
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
                        style: const TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF540b0e),
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
