import 'package:flutter/material.dart';
import 'package:meditation_app/common/color_extension.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  List listArr = [
    {
      "image": "assets/images/mu1.png",
      "title": "Night Island",
      "subtitle": "45 MIN . SLEEP MUSIC"
    },
    {
      "image": "assets/images/mu2.png",
      "title": "Sweet Sleep",
      "subtitle": "45 MIN . SLEEP MUSIC"
    },
    {
      "image": "assets/images/mu3.png",
      "title": "Good Night",
      "subtitle": "45 MIN . SLEEP MUSIC"
    },
    {
      "image": "assets/images/mu4.png",
      "title": "Moon Clouds",
      "subtitle": "45 MIN . SLEEP MUSIC"
    },
    {
      "image": "assets/images/mu2.png",
      "title": "Night Island",
      "subtitle": "45 MIN . SLEEP MUSIC"
    },
    {
      "image": "assets/images/mu1.png",
      "title": "Sweet Sleep",
      "subtitle": "45 MIN . SLEEP MUSIC"
    },
    {
      "image": "assets/images/mu4.png",
      "title": "Good Night",
      "subtitle": "45 MIN . SLEEP MUSIC"
    },
    {
      "image": "assets/images/mu3.png",
      "title": "Moon Clouds",
      "subtitle": "45 MIN . SLEEP MUSIC"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.sleep,
      appBar: AppBar(
        leading: Container(),
        centerTitle: true,
        title: Text(
                              "Music",
                              style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 1.2),
        itemBuilder: (context, index) {
          var cObj = listArr[index];
          return Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    cObj["image"],
                    width: double.maxFinite,
                    height: context.width * 0.2,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  cObj["title"],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: TColor.sleepText,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  cObj["subtitle"],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: TColor.sleepText,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: listArr.length,
      ),
    );
  }
}