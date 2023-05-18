import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'category/category_widget.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/background02.jpg'),
        ),
      ),
      child: Scaffold(
        // backgroundColor: const Color(0xFFfefae0),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundImage: const AssetImage('images/splash.jpg'),
                        radius: 50.r,
                      ),
                      Row(
                        children: [
                          Text(
                            'Hello!  ',
                            style: GoogleFonts.fruktur(
                                fontSize: 40.sp, color: Colors.yellow),
                          ),
                          Text(
                            'Kiddo',
                            style: GoogleFonts.fruktur(
                                fontSize: 40.sp, color: Colors.tealAccent),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 5,
                  child: CategoryWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
