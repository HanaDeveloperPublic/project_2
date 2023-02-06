import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_2/components/my_text.dart';
import 'package:project_2/pages/morning_dhkir.dart';
import 'package:project_2/pages/night_dhkir.dart';

class DukarCategory extends StatelessWidget {
  const DukarCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context, false),
          child: Icon(Icons.arrow_back_ios, color: Colors.grey.withOpacity(0.8)),
        ),
        title:
            const Text(" الأذكار ", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500)),
        backgroundColor: Colors.white.withOpacity(0.9),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15.0,
        ),
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 70,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MorningDhkir()),
                );
              },
              child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.purple[300],
                    border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 12),
                        const SizedBox(width: 5),
                        Icon(CupertinoIcons.left_chevron, color: CupertinoColors.white.withOpacity(0.8)),
                        const SizedBox(width: 8),
                        const Spacer(),
                        const MyMainText("أذكار الصباح", fontSize: 20, color: Colors.white, fontWight: FontWeight.bold),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            decoration: const BoxDecoration(),
                            width: 55,
                            height: 55,
                            child: const ImageIcon(AssetImage("assets/hand.png"), size: 24, color: Colors.white),
                          ),
                        ),
                      ])),
            ),
            const SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NightDhkir()),
                );
              },
              child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.purple[300],
                    border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 12),
                        const SizedBox(width: 5),
                        Icon(CupertinoIcons.left_chevron, color: CupertinoColors.white.withOpacity(0.8)),
                        const SizedBox(width: 8),
                        const Spacer(),
                        const MyMainText(
                          "أذكار المساء",
                          fontSize: 20,
                          fontWight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            decoration: const BoxDecoration(),
                            width: 55,
                            height: 55,
                            child: const ImageIcon(AssetImage("assets/hand.png"), size: 24, color: Colors.white),
                          ),
                        ),
                      ])),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.purple[300],
                  border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 12),
                      const SizedBox(width: 5),
                      Icon(CupertinoIcons.left_chevron, color: CupertinoColors.white.withOpacity(0.8)),
                      const SizedBox(width: 8),
                      const Spacer(),
                      const MyMainText(
                        "أذكار النوم",
                        fontSize: 20,
                        fontWight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: const BoxDecoration(),
                          width: 55,
                          height: 55,
                          child: const ImageIcon(AssetImage("assets/hand.png"), size: 24, color: Colors.white),
                        ),
                      ),
                    ])),
            const SizedBox(
              height: 12,
            ),
            Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.purple[300],
                  border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 12),
                      const SizedBox(width: 5),
                      Icon(CupertinoIcons.left_chevron, color: CupertinoColors.white.withOpacity(0.8)),
                      const SizedBox(width: 8),
                      const Spacer(),
                      const MyMainText(
                        "أذكار الإستيقاظ من النوم",
                        fontSize: 20,
                        fontWight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: const BoxDecoration(),
                          width: 55,
                          height: 55,
                          child: const ImageIcon(AssetImage("assets/hand.png"), size: 24, color: Colors.white),
                        ),
                      ),
                    ])),
            const SizedBox(
              height: 12,
            ),
            Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.purple[300],
                  border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 12),
                      const SizedBox(width: 5),
                      Icon(CupertinoIcons.left_chevron, color: CupertinoColors.white.withOpacity(0.8)),
                      const SizedBox(width: 8),
                      const Spacer(),
                      const MyMainText(
                        "أذكار بعد الصلاة",
                        fontSize: 20,
                        fontWight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: const BoxDecoration(),
                          width: 55,
                          height: 55,
                          child: const ImageIcon(AssetImage("assets/hand.png"), size: 24, color: Colors.white),
                        ),
                      ),
                    ])),
            const SizedBox(
              height: 12,
            ),
            Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.purple[300],
                  border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 12),
                      const SizedBox(width: 5),
                      Icon(CupertinoIcons.left_chevron, color: CupertinoColors.white.withOpacity(0.8)),
                      const SizedBox(width: 8),
                      const Spacer(),
                      const MyMainText(
                        "أذكار بعد الفراغ من الوضوء",
                        fontSize: 20,
                        fontWight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: const BoxDecoration(),
                          width: 55,
                          height: 55,
                          child: const ImageIcon(AssetImage("assets/hand.png"), size: 24, color: Colors.white),
                        ),
                      ),
                    ])),
            const SizedBox(
              height: 12,
            ),
            Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.purple[300],
                  border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 12),
                      const SizedBox(width: 5),
                      Icon(CupertinoIcons.left_chevron, color: CupertinoColors.white.withOpacity(0.8)),
                      const SizedBox(width: 8),
                      const Spacer(),
                      const MyMainText(
                        "أذكار دخول المنزل",
                        fontSize: 20,
                        fontWight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: const BoxDecoration(),
                          width: 55,
                          height: 55,
                          child: const ImageIcon(AssetImage("assets/hand.png"), size: 24, color: Colors.white),
                        ),
                      ),
                    ])),
            const SizedBox(
              height: 12,
            ),
            Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.purple[300],
                  border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 12),
                      const SizedBox(width: 5),
                      Icon(CupertinoIcons.left_chevron, color: CupertinoColors.white.withOpacity(0.8)),
                      const SizedBox(width: 8),
                      const Spacer(),
                      const MyMainText(
                        "أذكار عقب السلام من الوتر",
                        fontSize: 20,
                        fontWight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: const BoxDecoration(),
                          width: 55,
                          height: 55,
                          child: const ImageIcon(AssetImage("assets/hand.png"), size: 24, color: Colors.white),
                        ),
                      ),
                    ])),
            const SizedBox(
              height: 12,
            ),

            // VerticalDhkir(),
            // VerticalAyah(),
          ],
        ),
      ),
      backgroundColor: Colors.white.withOpacity(0.9),
    );
  }
}
