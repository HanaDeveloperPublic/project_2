import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:project_2/components/my_text.dart';

class AudioMorningDuker extends StatefulWidget {
  const AudioMorningDuker({super.key});

  @override
  State<AudioMorningDuker> createState() => _audioMorningDukerState();
}

class _audioMorningDukerState extends State<AudioMorningDuker> {
  final audioPlayer = AudioPlayer();
  bool isPlay = false;
  String url = "https://ia800709.us.archive.org/14/items/Du3a_uP_bY_mUSLEm/084-_up_by_muslem.mp3";

  @override
  void initState() {
    audioPlayer.onPlayerStateChanged.listen((event) {
      setState(() {
        isPlay = event == PlayerState.playing;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
          Text(" أذكار الصباح صوتية ",
              style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500)),
        ]),
        backgroundColor: Colors.white.withOpacity(0.9),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/ombreh.jpeg"), fit: BoxFit.cover),
        ),
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: IconButton(
              onPressed: () {
                isPlay ? {audioPlayer.pause(), print("pause")} : {audioPlayer.play(UrlSource(url)), print("play")};
              },
              icon: Icon(
                Icons.tap_and_play_outlined,
                color: Colors.grey.withOpacity(0.8),
                size: 50,
              ),
            ),
          ),
          const Center(
            child: MyText(
              " اضغط على اليقونة ليتم تشغيل الأذكار",
              fontSize: 20,
              color: Colors.grey,
            ),
          )
        ]),
      ),
    );
  }
}
