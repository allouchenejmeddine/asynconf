import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoBottomWidget extends StatelessWidget {
  const InfoBottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        height: 170,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Text(
                "Statistiques de l'année 2021 :",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(fontSize: 18.sp, color: Colors.white, fontWeight: FontWeight.w900, )
            ),
            SizedBox(height: 0.01.sh),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                        "10 000+",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(fontSize: 12.sp, color: Colors.white, fontWeight: FontWeight.w800)
                    ),
                    Text(
                        "visiteurs \n uniques",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(fontSize: 12.sp, color: Colors.white)
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                        "30+",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(fontSize: 12.sp, color: Colors.white, fontWeight: FontWeight.w800)
                    ),
                    Text(
                        "conferences \n uniques",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(fontSize: 12.sp, color: Colors.white)
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                        "60 000+",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(fontSize: 12.sp, color: Colors.white, fontWeight: FontWeight.w800)
                    ),
                    Text(
                        "vues sur \n rediffusion",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(fontSize: 12.sp, color: Colors.white)
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
