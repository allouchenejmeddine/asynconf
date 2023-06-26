import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import '../widgets/BuildMenu.dart';

class CommonPage extends StatefulWidget {
  const CommonPage({Key? key, required this.wrapped}) : super(key: key);
  final Widget wrapped;

  @override
  State<CommonPage> createState() => _CommonPageState();
}

class _CommonPageState extends State<CommonPage> {
  bool isOpened = false;
  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();
  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: _endSideMenuKey,
      inverse: true, // end side menu
      background: Colors.green[400],
      type: SideMenuType.slideNRotate,
      menu: const Padding(
        padding: EdgeInsets.only(left: 25.0),
        child: BuildMenu(),
      ),
      onChange: (isOpened) {
        setState(() => isOpened = isOpened);
      },
      child: SideMenu(
        background: Colors.lightBlueAccent,
        key: _sideMenuKey,
        menu: BuildMenu(),
        type: SideMenuType.slideNRotate,
        onChange: (isOpened) {
          setState(() => isOpened = isOpened);
        },
        child: IgnorePointer(
          ignoring: isOpened,
          child: Scaffold(
            body: SingleChildScrollView(
              child: SafeArea(
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/media/bg.png", ),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 5, 0, 0),
                        child: IconButton(
                          icon: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            child: Icon(Icons.menu_open, color: Colors.black87, size: 0.05.sh,),
                          ),
                          onPressed: (){
                            final state = _sideMenuKey.currentState;
                            if(state != null){
                              if (state.isOpened) {

                                state.closeSideMenu(); // close side menu
                              } else {
                                state.openSideMenu();//
                              }
                            }
                          },
                        ),
                      ),
                      widget.wrapped,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
