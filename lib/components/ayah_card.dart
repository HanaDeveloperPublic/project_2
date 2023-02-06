import 'package:flutter/material.dart';
import 'package:project_2/model/data_model.dart';
import 'package:share_plus/share_plus.dart';

//import 'package:share_plus/share_plus.dart';

import 'my_text.dart';

class AyahCard extends StatefulWidget {
  const AyahCard({super.key});

  @override
  State<AyahCard> createState() => _AyahCardState();
}

class _AyahCardState extends State<AyahCard> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    final likeColor = Data.favoriteAyahList.contains(Data.ayahList[count]) ? Colors.red : Colors.black;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context, false),
          child: Icon(Icons.arrow_back_ios, color: Colors.grey.withOpacity(0.8)),
        ),
        title: Row(children: [
          const SizedBox(
            width: 85,
          ),
          const Text(" ايات و فوائد", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500)),
          const SizedBox(
            width: 120,
          ),
          InkWell(
            onTap: () => sharePressed(),
            child: const Icon(
              Icons.share,
              color: Colors.black,
            ),
          ),
        ]),
        backgroundColor: Colors.white.withOpacity(0.9),
        //centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.5),
          border: const Border.fromBorderSide(BorderSide(color: Colors.white, width: 0.5)),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          image: const DecorationImage(image: AssetImage("assets/ombreh.jpeg"), fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            //for (var ayah in Data.ayahList)
            Padding(
              padding: const EdgeInsets.only(left: 35, top: 30, right: 45),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3), borderRadius: const BorderRadius.all(Radius.circular(20))),
                width: 350,
                height: 600,
                child: Column(children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(Data.ayahList[count].name,
                          style: const TextStyle(color: Colors.black, fontSize: 24), textAlign: TextAlign.center)),
                  Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Text(Data.ayahList[count].description,
                          style: const TextStyle(color: Colors.black, fontSize: 20), textAlign: TextAlign.center)),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        "${Data.ayahList[count].from}سورة",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ]),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (count != Data.ayahList.length - 1) {
                          count = count + 1;
                        }
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            child: MyText("التالي", fontSize: 30),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                Data.favoriteAyahList.add(Data.ayahList[count]);
                                likeColor == Colors.red ? Colors.black : Colors.red;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(18),
                                  bottomLeft: Radius.circular(18),
                                ),
                              ),
                              child: Icon(Icons.favorite, color: likeColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void sharePressed() {
    String message = Data.ayahList[count].name + Data.ayahList[count].description + Data.ayahList[count].from;
    Share.share(message);
  }
}
