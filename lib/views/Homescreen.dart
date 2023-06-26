import 'package:asynconf/views/CommonPage.dart';
import 'package:asynconf/widgets/SlimyCard.dart';
import 'package:asynconf/widgets/InfoBottomWidget.dart';
import 'package:asynconf/widgets/InfoTopWidget.dart';
import 'package:asynconf/widgets/YoutubeVideos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animator/animator.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/BuildMenu.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin {
  bool isTappedOne = false;
  bool isTappedTwo = false;
  bool isOpened = false;

  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    );

    final curve = CurvedAnimation(
      parent: _animationController,
      curve: Curves.elasticOut,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(2.5, 0.0),
      end: Offset.zero,
    ).animate(curve);


    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // Animation has completed
      }
    });

    // Delay the start of the animation
    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        _animationController.forward();
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return CommonPage(wrapped: Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 0.015.sh,),
                    SvgPicture.asset("assets/media/logo.svg", height: 0.15.sw,),
                    SizedBox(height: 0.01.sh,),
                    SlideTransition(
                      position: _slideAnimation,
                      child: Text(
                        'AsynConf',
                        style: GoogleFonts.poppins(fontSize: 30.sp,fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(height: 0.05.sh,),
                    Row(
                      children: [
                        Container(
                            width: 0.02.sh,
                            height: 0.02.sh,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.lightBlueAccent,
                            ),
                            child: const Text('')
                        ),
                        SizedBox(width: 0.05.sw,),
                        Text(
                          "Salon virtuel de l'informatique \n Du 27 au 29 Octobre 2022",
                          style: GoogleFonts.poppins(fontSize: 15.sp,fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(height: 0.03.sh,),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onHighlightChanged: (value) {
                setState(() {
                  isTappedOne = value;
                });
              },
              onTap: () {
                launchUrl(Uri.parse("https://www.youtube.com/watch?v=9iv0vSYZPV0"));
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.fastLinearToSlowEaseIn,
                height: isTappedOne ? 0.07.sh : 0.06.sh,
                width: isTappedOne ? 0.75.sw : 0.7.sw,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 30,
                      offset: const Offset(3, 7),
                    ),
                  ],
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                          height: 0.15.sh,
                          width: 0.15.sw,
                          child: Animator<double>(
                            duration: const Duration(milliseconds: 1000),
                            cycles: 0,
                            curve: Curves.easeInOut,
                            tween: Tween<double>(begin: 15.0, end: 25.0),
                            builder: (context, animatorState, child) => Icon(
                              Icons.live_tv,
                              color: Colors.white,
                              size: animatorState.value * 1.5,
                            ),
                          )
                      ),
                      Text(
                        "REGARDER LE DIRECT",
                        style: GoogleFonts.poppins(fontSize: 15.sp, color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 0.03.sh,),
          Align(
            alignment: Alignment.center,
            child: InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onHighlightChanged: (value) {
                setState(() {
                  isTappedTwo = value;
                });
              },
              onTap: () {
                launchUrl(Uri.parse("https://discord.gg/WMUGjYXne6"));
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.fastLinearToSlowEaseIn,
                height: isTappedTwo ? 0.07.sh : 0.06.sh,
                width: isTappedTwo ? 0.75.sw : 0.7.sw,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 30,
                      offset: const Offset(3, 7),
                    ),
                  ],
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.discord_outlined, color: Colors.white,size: 0.06.sh,),
                      Text(
                        "REJOINDRE DISCORD",
                        style: GoogleFonts.poppins(fontSize: 15.sp, color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 0.03.sh,),
          SlimyCard(topCardWidget: InfoTopWidget(), bottomCardWidget: InfoBottomWidget()),
          SizedBox(height: 0.03.sh,),
          Text(
            "TOP 6 - Rediffusions 2020",
            style: GoogleFonts.poppins(fontSize: 15.sp, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 0.02.sh,),
          const YoutubeVideos()
        ],
      ),
    ));
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

}


