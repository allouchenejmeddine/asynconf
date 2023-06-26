import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoTopWidget extends StatelessWidget {
  const InfoTopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          Text(
            "Bienvenue dans l'edition 3 de l'Asynconf",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 20.sp, color: Colors.white, fontWeight: FontWeight.w900, )
          ),
          SizedBox(height: 0.005.sh),
          Text(
              "Au programme une serie de conferences, tournois de code, stands et autres activités en ligne. L'accès au salon est 100% en ligne et Gratuit",
              textAlign: TextAlign.justify,

              style: GoogleFonts.poppins(fontSize: 16.sp, color: Colors.white, )
          ),
        ],
      ),
    );
  }
}
