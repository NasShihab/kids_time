import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kids_time/custom_height.dart';

import 'category/category_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFe2e2e2),
      // backgroundColor: const Color(0xFFffe8d6),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: const AssetImage('images/a.png'),
                    radius: 25.r,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.pink,
                          size: 35.sp,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu_book,
                          color: Colors.green,
                          size: 35.sp,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              height10(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello,',
                    style: GoogleFonts.mogra(
                        fontSize: 20.sp, color: Colors.purpleAccent),
                  ),
                  Text(
                    'Kiddo,',
                    style: GoogleFonts.mogra(
                        fontSize: 30.sp, color: Colors.deepOrange),
                  ),
                ],
              ),
              height15(),
              const CategoryWidget(),
            ],
          ),
        ),
      ),
    );
  }
}