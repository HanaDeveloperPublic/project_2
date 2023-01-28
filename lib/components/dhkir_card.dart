import 'package:flutter/material.dart';
import 'package:project_2/model/Data.dart';

import 'my_text.dart';

class DhkirCard extends StatefulWidget {
  const DhkirCard({super.key, required this.dhkir});

  final Dhkir dhkir;

  @override
  State<DhkirCard> createState() => _DhkirCardState();
}

class _DhkirCardState extends State<DhkirCard> {
  var likeColor = Colors.black;
  var count = 0;
  var periodIcon = const Icon(Icons.emoji_transportation);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
        boxShadow: const [
          BoxShadow(
            color: Color(0xeeeeee80),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              /// Name
              Container(
                constraints: const BoxConstraints(minHeight: 150),
                padding: const EdgeInsets.all(12),
                child: MyText(
                  widget.dhkir.name,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              //description
              Container(
                constraints: const BoxConstraints(minHeight: 30),
                padding: const EdgeInsets.all(12),
                child: MyText(
                  widget.dhkir.description,
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),

              //repeat
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: MyText(widget.dhkir.numberOfRepeat, fontSize: 18),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        count = count + 1;
                        print(count);
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Text(
                        count.toString(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),

              /// period
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: MyText(widget.dhkir.period, fontSize: 18),
                      ),
                      widget.dhkir.id == "1"
                          ? const Icon(
                              Icons.sunny,
                              color: Colors.yellow,
                            )
                          : const Icon(Icons.bedtime_outlined),
                    ]),
                  ]),

                  /// Add to cart button
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            Data.favoriteDhkirList.add(widget.dhkir);
                            if (likeColor == Colors.red) {
                              likeColor = Colors.black;
                            } else {
                              likeColor = Colors.red;
                            }
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(18), bottomLeft: Radius.circular(18)),
                          ),
                          child: Icon(
                            Icons.favorite,
                            color: likeColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 12),
            ],
          ),
        ],
      ),
    );
  }
}
