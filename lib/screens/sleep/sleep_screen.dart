import 'package:flutter/material.dart';
import 'package:meditation_app/common/color_extension.dart';
import 'package:meditation_app/screens/sleep/sleep_storiesdetail_screen.dart';


class SleepScreen extends StatefulWidget {
  const SleepScreen({super.key});

  @override
  State<SleepScreen> createState() => _SleepScreenState();
}

class _SleepScreenState extends State<SleepScreen> {
  int selectIndex = 0;
  List catArr = [
    {"icon": "assets/images/all.png", "title": "All"},
    {"icon": "assets/images/fav_m.png", "title": "My"},
    {"icon": "assets/images/anxious.png", "title": "Anxious"},
    {"icon": "assets/images/sleep_btn.png", "title": "Sleep"},
    {"icon": "assets/images/kids.png", "title": "Kids"},
  ];

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(
                  "assets/images/top_sleep.png",
                  width: double.maxFinite,
                  fit: BoxFit.fitWidth,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sleep Stories",
                          maxLines: 1,
                          style: TextStyle(
                              color: TColor.sleepText,
                              fontSize: 28,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Soothing bedtime stories to help you fall\ninto a deep and natural sleep",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: TColor.sleepText,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 120,
                      child: ListView.separated(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            var cObj = catArr[index];
                            return GestureDetector(
                              onTap: () {
                                selectIndex = index;
                                setState(() {});
                              },
                              child: Column(children: [
                                Container(
                                  width: 55,
                                  height: 55,
                                  decoration: BoxDecoration(
                                      color: selectIndex == index
                                          ? TColor.primary
                                          : const Color(0xff586894),
                                      borderRadius: BorderRadius.circular(20)),
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    cObj["icon"],
                                    width: 25,
                                    height: 25,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  cObj["title"],
                                  style: TextStyle(
                                    color: selectIndex == index
                                        ? TColor.primary
                                        : TColor.secondaryText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ]),
                            );
                          },
                          separatorBuilder: (context, index) => const SizedBox(
                                width: 20,
                              ),
                          itemCount: catArr.length),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: const Color(0xffF1DDCF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            "assets/images/sleep_box.png",
                            width: double.maxFinite,
                            fit: BoxFit.fitWidth,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        height: 60,
                                      ),
                                      const Text(
                                        "The Ocean Moon",
                                        style: TextStyle(
                                          color: Color(0xffFFE7BF),
                                          fontSize: 32,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "Non-stop 8- hour mixes of our\nmost popular sleep audio",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: TColor.tertiary,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 25,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: TColor.tertiary,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 15),
                                          child: Text(
                                            "START",
                                            style: TextStyle(
                                              color: TColor.primaryText,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.08),
              itemBuilder: (context, index) {
                var cObj = listArr[index];
                return GestureDetector(
                  onTap: () {
                    context.push(const SleepStoriesDetailScreen());
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          cObj["image"],
                          width: double.maxFinite,
                          height: context.width * 0.25,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        cObj["title"],
                        maxLines: 1,
                        style: TextStyle(
                            color: TColor.sleepText,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        cObj["subtitle"],
                        maxLines: 1,
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
          ],
        ),
      ),
    );
  }
}