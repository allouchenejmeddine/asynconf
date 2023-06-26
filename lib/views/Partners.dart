import 'package:asynconf/views/CommonPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Partners extends StatefulWidget {
  const Partners({Key? key}) : super(key: key);

  @override
  State<Partners> createState() => _PartnersState();
}

class _PartnersState extends State<Partners> {
  @override
  Widget build(BuildContext context) {
    return CommonPage(wrapped: Container(
      height: 1.sh,
      width: 1.sw,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nos partenaires sont nos \n Points Forts",
              style: GoogleFonts.poppins(color: Colors.black54, fontSize: 25.sp),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 0.05.sh,),
            InkWell(
              onTap: ()=> _launchUrl(Uri.parse("https://asynconf.fr/hostinger.html")),
              child: Container(
                height: 0.1.sh,
                width: 0.8.sw,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.lightBlueAccent
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.handshake, size: 0.05.sh, color: Colors.indigoAccent,),
                      Text(
                        "Hostinger",
                        style: GoogleFonts.poppins(color: Colors.white, fontSize: 25.sp),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 0.1.sh,),
            InkWell(
              onTap: ()=> _launchUrl(Uri.parse("https://asynconf.fr/smarteo.html")),
              child: Container(
                height: 0.1.sh,
                width: 0.8.sw,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.lightBlueAccent
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.handshake, size: 0.05.sh, color: Colors.indigoAccent,),
                      Text(
                        "Smarteo",
                        style: GoogleFonts.poppins(color: Colors.white, fontSize: 25.sp),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 0.1.sh,),
            InkWell(
              onTap: ()=> _launchUrl(Uri.parse("https://asynconf.fr/creators-area.html")),
              child: Container(
                height: 0.1.sh,
                width: 0.8.sw,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.lightBlueAccent
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.handshake, size: 0.05.sh, color: Colors.indigoAccent,),
                      Text(
                        "Creators Area",
                        style: GoogleFonts.poppins(color: Colors.white, fontSize: 25.sp),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
