import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:project_2/components/my_text.dart';
import 'package:project_2/pages/alharam.dart';
import 'package:project_2/pages/duaa.dart';
import 'package:project_2/pages/madinah.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/ayah_card.dart';
import '../components/name_card.dart';

class MixPage extends StatefulWidget {
  const MixPage({super.key});

  @override
  State<MixPage> createState() => _MixPageState();
}

class _MixPageState extends State<MixPage> {
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
    _timer?.cancel();
  }

  final List<Widget> _pages = [const PageOne(), const PageTwo(), const PageThree()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("منوعات", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500)),
          backgroundColor: Colors.white.withOpacity(0.9),
          centerTitle: true,
        ),
        body: ListView(padding: const EdgeInsets.only(top: 5), children: <Widget>[
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
          const SizedBox(height: 12),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AyahCard()));
            },
            child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ).scale(4)
                  ],
                  color: Colors.grey[300],
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 12),
                      const SizedBox(width: 5),
                      const SizedBox(width: 8),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: MyMainText(
                          "آيه و فائدة",
                          fontSize: 24,
                          fontWight: FontWeight.bold,
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(color: Colors.green.shade400),
                        width: 10,
                        height: double.infinity,
                      ),
                      // ),
                    ])),
          ),
          const Divider(
            color: Colors.grey,
            height: 1,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const NameCard()));
            },
            child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ).scale(4)
                  ],
                  color: Colors.grey[300],
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 12),
                      const SizedBox(width: 5),
                      const SizedBox(width: 8),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: MyMainText(
                          "أسماء الله الحسنى",
                          fontSize: 24,
                          fontWight: FontWeight.bold,
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(color: Colors.yellow.shade200),
                        width: 10,
                        height: double.infinity,
                      ),
                      // ),
                    ])),
          ),
          const Divider(
            color: Colors.grey,
            height: 1,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Duaa()));
            },
            child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ).scale(4)
                  ],
                  color: Colors.grey[300],
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 12),
                      const SizedBox(width: 5),
                      const SizedBox(width: 8),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: MyMainText(
                          "الأدعية",
                          fontSize: 24,
                          fontWight: FontWeight.bold,
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(color: Colors.pink.shade200),
                        width: 10,
                        height: double.infinity,
                      ),
                      // ),
                    ])),
          ),
          const Divider(
            color: Colors.grey,
            height: 1,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Alharam()));
            },
            child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ).scale(4)
                  ],
                  color: Colors.grey[300],
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 12),
                      const SizedBox(width: 5),
                      const SizedBox(width: 8),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: MyMainText(
                          "بث الحرم المكي",
                          fontSize: 24,
                          fontWight: FontWeight.bold,
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(color: Colors.purple.shade200),
                        width: 10,
                        height: double.infinity,
                      ),
                      // ),
                    ])),
          ),
          const Divider(
            color: Colors.grey,
            height: 1,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Madinah()));
            },
            child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ).scale(4)
                  ],
                  color: Colors.grey[300],
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 12),
                      const SizedBox(width: 5),
                      const SizedBox(width: 8),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: MyMainText(
                          "بث الحرم المدني",
                          fontSize: 24,
                          fontWight: FontWeight.bold,
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(color: Colors.blue.shade200),
                        width: 10,
                        height: double.infinity,
                      ),
                      // ),
                    ])),
          ),
          const Divider(
            color: Colors.grey,
            height: 1,
          ),
          InkWell(
            onTap: () {
              //    Navigator.push(context, MaterialPageRoute(builder: (context) => const Madinah()));
            },
            child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ).scale(4)
                  ],
                  color: Colors.grey[300],
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 12),
                      const SizedBox(width: 5),
                      const SizedBox(width: 8),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: MyMainText(
                          "أذكار الصلاة",
                          fontSize: 24,
                          fontWight: FontWeight.bold,
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(color: Colors.orange.shade200),
                        width: 10,
                        height: double.infinity,
                      ),
                      // ),
                    ])),
          ),
          const Divider(
            color: Colors.grey,
            height: 1,
          ),
          InkWell(
            onTap: () {
              //  Navigator.push(context, MaterialPageRoute(builder: (context) => const Madinah()));
            },
            child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ).scale(4)
                  ],
                  color: Colors.grey[300],
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 12),
                      const SizedBox(width: 5),
                      const SizedBox(width: 8),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: MyMainText(
                          "الرقية بالقرآن",
                          fontSize: 24,
                          fontWight: FontWeight.bold,
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(color: Colors.brown.shade200),
                        width: 10,
                        height: double.infinity,
                      ),
                      // ),
                    ])),
          ),
        ]),
        backgroundColor: Colors.grey.withOpacity(0.2));
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
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/cloud_back.jpeg"), fit: BoxFit.cover),
              // border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
              // borderRadius: const BorderRadius.all(Radius.circular(8))
            ),
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
        image: DecorationImage(image: AssetImage("assets/md1.jpg"), fit: BoxFit.cover),
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
        image: DecorationImage(image: AssetImage("assets/md2.jpg"), fit: BoxFit.cover),
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
        image: DecorationImage(image: AssetImage("assets/md3.jpg"), fit: BoxFit.cover),
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
