import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SlideCard extends StatelessWidget {
  final index;
  final partOfDay;

  SlideCard(this.index, this.partOfDay);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 20,
                offset: const Offset(0, 10),
              )
            ]),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  partOfDay.hours,
                  style: GoogleFonts.poppins(fontSize: 20.sp, color: Colors.tealAccent),
                ),
                Text(
                  partOfDay.speakerName,
                  style: GoogleFonts.poppins(fontSize: 20.sp, color: Colors.white),
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(partOfDay.linkLogo, height: 0.1.sh,)
                ),
                Text(
                  partOfDay.title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(fontSize: 20.sp),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "#${partOfDay.tags}",
                      style: GoogleFonts.poppins(fontSize: 20.sp, color: Colors.indigoAccent),
                    ),
                  ],
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
