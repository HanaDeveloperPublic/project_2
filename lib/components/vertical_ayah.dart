import 'package:flutter/material.dart';
import 'package:project_2/model/data_model.dart';

class VerticalAyah extends StatefulWidget {
  const VerticalAyah({
    Key? key,
  }) : super(key: key);

  @override
  State<VerticalAyah> createState() => _VerticalAyahState();
}

class _VerticalAyahState extends State<VerticalAyah> {
  int count = 0;
  var likeColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          children: [
            for (var ayah in Data.favoriteAyahList)
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 35, top: 30),
                child: Container(
                  decoration:
                      BoxDecoration(color: Colors.grey.withOpacity(0.3), borderRadius: BorderRadius.circular(20)),
                  width: 350,
                  height: 450,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(ayah.name,
                          style: const TextStyle(fontSize: 24, color: Colors.black), textAlign: TextAlign.center),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text(ayah.description,
                            textAlign: TextAlign.center, style: const TextStyle(fontSize: 20, color: Colors.black))),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        Text("${ayah.from}سورة",
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.5), fontSize: 20, fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center)
                      ]),
                    ),

                    // InkWell(
                    //   onTap: () {
                    //     setState(() {
                    //       count = count + 1;
                    //     });
                    //   },
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(8),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         const MyText("التالي", fontSize: 30),
                    //         InkWell(
                    //           onTap: () {
                    //             setState(() {
                    //               Data.favoriteAyahList.add(ayah);
                    //               likeColor = likeColor == Colors.red ? Colors.black : Colors.red;
                    //             });
                    //           },
                    //           child: Container(
                    //             padding: const EdgeInsets.all(8),
                    //             decoration: const BoxDecoration(
                    //               color: Colors.transparent,
                    //               borderRadius: BorderRadius.only(
                    //                 topLeft: Radius.circular(18),
                    //                 bottomLeft: Radius.circular(18),
                    //               ),
                    //             ),
                    //             child: Icon(Icons.favorite, color: likeColor),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(
                      height: 30,
                    )
                  ]),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
