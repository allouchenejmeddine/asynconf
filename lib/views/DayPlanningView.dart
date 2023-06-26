import 'package:asynconf/views/CommonPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/CardStack.dart';

class DayPlanningView extends StatefulWidget {
  const DayPlanningView({Key? key, required this.dayPlanning}) : super(key: key);
  final dayPlanning;
  @override
  State<DayPlanningView> createState() => _DayPlanningViewState();
}

class _DayPlanningViewState extends State<DayPlanningView>   with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CommonPage(
        wrapped: Padding(
          padding: const EdgeInsets.all(18),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.dayPlanning.name,
                  style: GoogleFonts.poppins(fontSize: 25.sp, color: Colors.black87),
                ),
                Text(
                  widget.dayPlanning.date,
                  style: GoogleFonts.poppins(fontSize: 22.sp, color: Colors.black54),
                ),
                SizedBox(height: 0.1.sh,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      controller.forward();
                    });
                  },
                  child: CardStack(controller, widget.dayPlanning),
                ),
              ],
            ),
          ),
        )
    );
  }


}
