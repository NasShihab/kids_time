import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kids_time/dashboard/category/reading/reading_data.dart';

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
                      builder: (BuildContext context) => const Months(),
                    ),
                  );
                }, title: 'Months Names',
              ),
              myButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const Months(),
                    ),
                  );
                }, title: 'Day\'s Names',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget myContainer({required String text}) => Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.red,
            Colors.yellow,
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
              color: Colors.black,
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );

Widget myButton({required VoidCallback onPressed,required String title}) => ElevatedButton(
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
      gradient: const LinearGradient(
        colors: [
          Colors.red,
          Colors.green,
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
        style: GoogleFonts.secularOne(color: Colors.white, fontSize: 40.sp),
      ),
    ),
  ),
);


class Months extends StatelessWidget {
  const Months({Key? key}) : super(key: key);

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
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 15.w,
                  mainAxisSpacing: 15.h,
                  crossAxisCount: 2,
                  childAspectRatio: 6 / 3),
              itemCount: dayNames.length,
              itemBuilder: (context, index) {
                return myContainer(
                  text: dayNames[index],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
