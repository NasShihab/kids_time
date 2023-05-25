import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DaysName extends StatelessWidget {
  const DaysName({
    Key? key,
    required this.dataList,
    required this.appBarTitle,
  }) : super(key: key);

  final List dataList;
  final String appBarTitle;

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
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: Text(appBarTitle),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 15.w,
                  mainAxisSpacing: 15.h,
                  crossAxisCount: 2,
                  childAspectRatio: 6 / 3),
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                return myContainer(
                  text: dataList[index],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

Widget myContainer({
  required String text,
}) =>
    Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.red,
            Colors.deepPurple,
          ],
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 5,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Center(
        child: FittedBox(
          child: Text(
            text,
            style: GoogleFonts.secularOne(
              color: Colors.yellow,
              fontSize: 35.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
