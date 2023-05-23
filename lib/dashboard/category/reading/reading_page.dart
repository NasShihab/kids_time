import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kids_time/dashboard/category/reading/days_month_names.dart';
import 'package:kids_time/dashboard/category/reading/data/reading_data.dart';

class ReadingPage extends StatelessWidget {
  const ReadingPage({Key? key}) : super(key: key);

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
          title: const Text('Reading Section'),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              myButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => DaysName(
                        dataList: monthNames,
                      ),
                    ),
                  );
                },
                title: 'Months Names',
              ),
              myButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => DaysName(
                        dataList: dayNames,
                      ),
                    ),
                  );
                },
                title: 'Day\'s Names',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget myButton({required VoidCallback onPressed, required String title}) =>
    ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(15),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        shadowColor: Colors.transparent,
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient:  const LinearGradient(
            colors: [
              Colors.yellow,
              Colors.orange,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          constraints:
              BoxConstraints(maxWidth: double.infinity.w, minHeight: 100.h),
          alignment: Alignment.center,
          child: Text(
            title,
            style: GoogleFonts.secularOne(
              color: Colors.black,
              fontSize: 40.sp,
            ),
          ),
        ),
      ),
    );
