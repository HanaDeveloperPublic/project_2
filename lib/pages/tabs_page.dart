import 'package:flutter/material.dart';
import 'package:project_2/components/tasbih.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  var likeColor = Colors.white;
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "التسبيح",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 24),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body:
          // Container(
          //   decoration: const BoxDecoration(
          //       image: DecorationImage(
          //     image: AssetImage("assets/arabic_back.jpeg"),
          //     fit: BoxFit.cover,
          //   )),
          //   child:
          ListView(padding: const EdgeInsets.all(24), children: [
        Column(
          children: [
            //favoriteDhkirList
            // for (var combineDhkir in Data.favoriteDhkirList)
            const LargeCategory2(),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 35, top: 30),
              child: InkWell(
                onTap: () {
                  setState(() {
                    count = count + 1;
                  });
                },
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " مجموع التسبيحات : $count",
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 20, color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
      //  ),
    );
  }
}
