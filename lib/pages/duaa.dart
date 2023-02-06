import 'package:flutter/material.dart';
import 'package:project_2/components/my_text.dart';
import 'package:project_2/model/data_model.dart';

class Duaa extends StatefulWidget {
  const Duaa({super.key});

  @override
  State<Duaa> createState() => _DuaaState();
}

class _DuaaState extends State<Duaa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context, false),
          child: Icon(Icons.arrow_back_ios, color: Colors.grey.withOpacity(0.8)),
        ),
        title: const Text(" الأدعية", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500)),
        backgroundColor: Colors.white.withOpacity(0.9),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/ombreh.jpeg"), fit: BoxFit.cover),
        ),
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 80,
            ),
            for (var duaa in Data.duaaList)
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 12),
                        const SizedBox(width: 5),
                        // const Icon(CupertinoIcons.left_chevron, color: CupertinoColors.inactiveGray),
                        const SizedBox(width: 8),
                        const Spacer(),
                        MyMainText(
                          duaa.name,
                          fontSize: 16,
                          fontWight: FontWeight.normal,
                        ),
                        const SizedBox(width: 12),
                        Container(
                          decoration: const BoxDecoration(),
                          width: 50,
                          height: 50,
                          child: const ImageIcon(AssetImage("assets/hand.png"), size: 20, color: Colors.black),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                      ]),
                ),
              ),
            const SizedBox(
              height: 12,
            ),
            // VerticalDhkir(),
            // VerticalAyah(),
          ],
        ),
      ),
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Container(
      //     decoration: BoxDecoration(border: Border.all(width: 1)),
      //     child: Padding(
      //       padding: const EdgeInsets.all(20.0),
      //       child: Container(
      //         decoration: BoxDecoration(border: Border.all(width: 1)),
      //         width: 400,
      //         height: 700,
      //         child: Center(
      //           child: ListView(children: [
      //             const Center(
      //               child: Padding(padding: EdgeInsets.all(8.0), child: MyText("أدعية قرآنية ", fontSize: 30)),
      //             ),
      //             for (var duaa in Data.duaaList)
      //               Padding(
      //                 padding: const EdgeInsets.all(10.0),
      //                 child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      //                   Expanded(child: MyText(duaa.name, fontSize: 20)),
      //                   const Icon(Icons.check),
      //                 ]),
      //               ),
      //           ]),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      backgroundColor: Colors.grey,
    );
  }
}
