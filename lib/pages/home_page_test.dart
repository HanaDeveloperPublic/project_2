import 'dart:async';
import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:project_2/components/my_text.dart';
import 'package:project_2/model/data_model.dart';
import 'package:project_2/pages/dukar_category.dart';
import 'package:project_2/pages/login.dart';
import 'package:project_2/pages/settings.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageTest extends StatefulWidget {
  const HomePageTest({super.key});

  @override
  State<HomePageTest> createState() => _HomePageTestState();
}

class _HomePageTestState extends State<HomePageTest> with SingleTickerProviderStateMixin {
  final audioPlayer = AudioPlayer();
  bool isPlay = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  late AnimationController controller;
  String url = "https://ia800709.us.archive.org/14/items/Du3a_uP_bY_mUSLEm/084-_up_by_muslem.mp3";

  final PageController _pageController = PageController(initialPage: 0);
  int count = 0;
  int _activePage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    super.initState();
    controller = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
    controller.forward();
    controller.addListener(() => setState(() {
          print("test animation");
        }));

    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlay = state == PlayerState.playing;
      });
    });
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });
    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });

    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_activePage < 2) {
        _activePage++;
      } else {
        _activePage = 0;
      }

      _pageController.animateToPage(
        _activePage,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    audioPlayer.dispose();
    controller.dispose();
    _timer?.cancel();
  }

  final List<Widget> _pages = [const PageOne(), const PageTwo(), const PageThree()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (_, __) => <Widget>[
            SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(
                title: const Text("أذكاري"),
                background: ClipRect(
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/dot.jpeg"), fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                    ),
                  ),
                ),
                centerTitle: true,
              ),
              elevation: 0.0,
              backgroundColor: Colors.purple.withOpacity(0.3),
              expandedHeight: 60,
              floating: false,
              pinned: true,
              snap: false,
            ),
          ],
          body: ListView(padding: const EdgeInsets.all(5), children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 220,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        color: Colors.transparent,
                        child: Stack(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 300,
                              child: PageView.builder(
                                controller: _pageController,
                                onPageChanged: (int page) {
                                  setState(() {
                                    _activePage = page;
                                  });
                                },
                                itemBuilder: (BuildContext context, int index) {
                                  return _pages[index % _pages.length];
                                },
                                itemCount: _pages.length,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
                            height: 50,
                            child: Container(
                              color: Colors.transparent,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List<Widget>.generate(
                                  _pages.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: InkWell(
                                      onTap: () {
                                        _pageController.animateToPage(index,
                                            duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: _activePage == index ? Colors.transparent : Colors.transparent,
                                        radius: 6,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const DukarCategory()));
                      },
                      child: const MainCategory(text: "الأذكار ")),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ).scale(4)
                        ],
                        image: const DecorationImage(image: AssetImage("assets/cloud_back.jpeg"), fit: BoxFit.cover),
                        border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                      ),
                      height: 190,
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [MyText('بلغوا عني و لو بآية ', fontSize: 30, color: Colors.purple)],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                            Expanded(
                              child: MyText(
                                Data.quranList[count].name,
                                fontSize: 20,
                                color: Colors.purple.withOpacity(0.9),
                              ).animate(controller: controller).fade().scale(),
                            ),
                          ]),
                        ),
                        const SizedBox(height: 8),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (count != Data.quranList.length - 1) {
                                count = count + 1;
                              } else {
                                count = 0;
                              }
                              controller.forward(from: 0.1);
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Icon(Icons.next_plan_outlined, size: 50, color: Colors.white.withOpacity(0.8))],
                          ),
                        ),
                      ]),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade400,
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ).scale(4)
                          ],
                          image: const DecorationImage(image: AssetImage("assets/cloud_back.jpeg"), fit: BoxFit.cover),
                          border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                        ),
                        height: 190,
                        child: Column(children: [
                          Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: const [
                                MyText(" استمع لأذكار الصباح", fontSize: 30, color: Colors.purple)
                              ])),
                          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                            Expanded(
                                child: Slider(
                                    activeColor: Colors.purple.withOpacity(0.8),
                                    inactiveColor: Colors.grey,
                                    max: duration.inSeconds.toDouble(),
                                    value: position.inSeconds.toDouble(),
                                    min: 0,
                                    onChanged: (double value) async {
                                      final position = Duration(seconds: value.toInt());
                                      await audioPlayer.seek(position);
                                      await audioPlayer.resume();
                                    }))
                          ]),
                          Padding(
                              padding: const EdgeInsets.only(left: 15.0, right: 20),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [Text(formatTime(position)), Text(formatTime(duration - position))])),
                          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                            Expanded(
                                child: IconButton(
                                    onPressed: () {
                                      isPlay
                                          ? {audioPlayer.pause(), print("pause")}
                                          : {audioPlayer.play(UrlSource(url)), print("play")};
                                    },
                                    icon: Icon(isPlay ? Icons.pause : Icons.play_arrow,
                                        color: Colors.white.withOpacity(0.8), size: 50)))
                          ]),
                        ])),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ]),
        ),
        drawer: Drawer(
            backgroundColor: Colors.white.withOpacity(0.9),
            child: ListView(children: <Widget>[
              DrawerHeader(
                  curve: Curves.fastOutSlowIn,
                  child: Container(
                      decoration: const BoxDecoration(),
                      child: const Center(child: MyMainText("مرحبا هنا", fontSize: 20, fontWight: FontWeight.bold)))),
              SizedBox(
                  child: Column(children: <Widget>[
                ListTile(
                    leading: const Icon(Icons.person, color: Colors.black),
                    title: const MyText("تسجيل الدخول", fontSize: 20),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
                    }),
                ListTile(
                    leading: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.grey.withOpacity(0.8),
                    ),
                    title: const MyText(" الإعدادات", fontSize: 20),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Settings()));
                    }),
                ListTile(
                    leading: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.grey.withOpacity(0.8),
                    ),
                    title: const MyText("تواصل معنا", fontSize: 20),
                    onTap: () => openwhatsapp())
              ]))
            ])),
        backgroundColor: Colors.white.withOpacity(0.9));
  }
}

class MainCategory extends StatelessWidget {
  const MainCategory({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ).scale(4)
                ],
                image: const DecorationImage(image: AssetImage("assets/cloud_back.jpeg"), fit: BoxFit.cover),
                border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            height: 170,
            child: Center(
                child: MyMainText(
              text,
              fontWight: FontWeight.bold,
              fontSize: 40,
              color: Colors.purple,
            ))));
  }
}

openwhatsapp() async {
  var whatsapp = "+966564383188";
  var whatappURLIos = "https://wa.me/$whatsapp?text=${Uri.parse("hello")}";

  if (await canLaunch(whatappURLIos)) {
    await launch(whatappURLIos, forceSafariVC: false);
  }
}

// Page One
class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.transparent,
        image: DecorationImage(image: AssetImage("assets/makkah1.jpeg"), fit: BoxFit.cover),
      ),
    );
  }
}

// Page Two
class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.transparent,
        image: DecorationImage(image: AssetImage("assets/makkah2.jpeg"), fit: BoxFit.cover),
      ),
      // height: 300,
    );
  }
}

// Page Three
class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.transparent,
        image: DecorationImage(image: AssetImage("assets/makkah3.jpeg"), fit: BoxFit.cover),
      ),
      // height: 300,
    );
  }
}

String formatTime(Duration duration) {
  String towDigits(int n) => n.toString().padLeft(2, '0');
  final hours = towDigits(duration.inHours);
  final minutes = towDigits(duration.inMinutes.remainder(60));
  final seconds = towDigits(duration.inSeconds.remainder(60));

  return [if (duration.inHours > 0) hours, minutes, seconds].join(" :");
}
