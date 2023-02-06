import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Alharam extends StatefulWidget {
  const Alharam({super.key});
  static const customSwatch = MaterialColor(
    0xFFFF5252,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(0xFFFF5252),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );

  @override
  State<Alharam> createState() => _AlharamState();
}

class _AlharamState extends State<Alharam> {
  YoutubePlayerController _controller = YoutubePlayerController(initialVideoId: 'PTiHx-tAuuI');
  PageController pageController = PageController(
    initialPage: 0,
  );
  int pageIndex = 0;
  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
      initialVideoId: 'PTiHx-tAuuI', // https://www.youtube.com/watch?v=PTiHx-tAuuI
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        isLive: true,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (_, __) => <Widget>[
            SliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                    title: const Text("بث الحرم المكي"),
                    centerTitle: true,
                    background: ClipRect(
                        child: Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(image: AssetImage("assets/dot.jpeg"), fit: BoxFit.cover)),
                            child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                                child: Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.all(Radius.circular(20)))))))),
                elevation: 0.0,
                backgroundColor: Colors.white.withOpacity(0.3),
                expandedHeight: 50,
                floating: false,
                pinned: true,
                snap: false)
          ],
          body: Expanded(
            child: ListView(padding: const EdgeInsets.all(20), children: <Widget>[
              YoutubePlayer(
                controller: _controller,
                aspectRatio: 16 / 9,
                progressIndicatorColor: Colors.amber,
                progressColors: const ProgressBarColors(playedColor: Colors.amber, handleColor: Colors.amberAccent),
                showVideoProgressIndicator: true,
              ),
            ]),
          ),
        ),
        backgroundColor: Colors.white.withOpacity(0.9));
  }
}
