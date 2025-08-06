import 'package:flutter/material.dart';
import 'package:meditation_app/common/color_extension.dart';
import 'package:meditation_app/common_widget/tab_button.dart';
import 'package:meditation_app/meditate/meditate_screen.dart';
import 'package:meditation_app/screens/avatar/avatar_screen.dart';
import 'package:meditation_app/screens/home/home_screen.dart';
import 'package:meditation_app/screens/music/music_screen.dart';
import 'package:meditation_app/screens/sleep/sleep_screen.dart';

class MainTabViewScreen extends StatefulWidget {
  const MainTabViewScreen({super.key});

  @override
  State<MainTabViewScreen> createState() => _MainTabViewScreenState();
}

class _MainTabViewScreenState extends State<MainTabViewScreen> with SingleTickerProviderStateMixin {

  TabController? controller;
  int selectTab = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 5, vsync: this);
    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {
        
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: [
        const HomeScreen(),
        const SleepScreen(),
        const MeditateScreen(),
        const MusicScreen(),
        AvatarScreen()
        
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 15, bottom: 8),
        decoration:  BoxDecoration(
          color: selectTab == 3 || selectTab == 1 ? TColor.sleep : Colors.white,
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, -4))
          ]
        ),
        child: SafeArea(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

              TabButton(icon: "assets/images/home_tab.png", title: "Home", isSelect: selectTab == 0, onPressed: (){
                  changeTab(0);
              }),
              TabButton(
                icon: "assets/images/sleep_tab.png",
                title: "Sleep",
                isSelect: selectTab == 1,
                onPressed: () {
                  changeTab(1);
                }),

              TabButton(
                icon: "assets/images/meditate_tab.png",
                title: "Meditate",
                isSelect: selectTab == 2,
                onPressed: () {
                  changeTab(2);
                }),

              TabButton(
                icon: "assets/images/music_tab.png",
                title: "Music",
                isSelect: selectTab == 3,
                onPressed: () {
                  changeTab(3);
                }),

              TabButton(
                icon: "assets/images/profile_tab.png",
                title: "Avatar",
                isSelect: selectTab == 4,
                onPressed: () {
                  changeTab(4);
                }),

          ],
        )),
      ) ,
    );

   
  }

   void changeTab(int index) {
    selectTab = index;
    controller?.animateTo(index);
    setState(() {});
  }
}