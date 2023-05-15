import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kids_time/custom_height.dart';
import 'package:kids_time/home_page/category/alphabet/data_model.dart';

class Alphabet extends StatelessWidget {
  const Alphabet({Key? key}) : super(key: key);

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
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          size: 40.sp,
                        )),
                    Text(
                      'Alphabets',
                      style: GoogleFonts.skranji(
                          fontSize: 45.sp, color: Colors.pink),
                    ),
                    Text(
                        'An alphabet is a set of graphs or characters used to represent the'
                            ' phonemic structure of a language.',style: TextStyle(fontSize: 20.sp),)
                  ],
                ),
              ),
              width10(),
              Expanded(
                flex: 2,
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 15.w,
                      mainAxisSpacing: 15.h,
                      crossAxisCount: 2),
                  itemCount: fruitList.length,
                  itemBuilder: (context, index) {
                    return Container(
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
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
