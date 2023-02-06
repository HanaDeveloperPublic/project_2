import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:project_2/components/tasbih.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  final tabs = TextEditingController();
  var numOfTab = 0;
  var likeColor = Colors.white;
  var count = 0;
  var percent = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("التسبيح", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500)),
        backgroundColor: Colors.white.withOpacity(0.9),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/ombreh.jpeg"), fit: BoxFit.cover),
        ),
        child: ListView(padding: const EdgeInsets.all(24), children: [
          Column(children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: LargeCategory2(),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 35, top: 30),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      count = count + 1;
                      percent = percent + 1.0;
                    });
                  },
                  child: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: CircularPercentIndicator(
                        radius: 70.0,
                        lineWidth: 8.0,
                        animation: true,
                        percent: double.parse(percent.toString()) /
                            100, // here we're using the percentage to be in sync with the color of the text
                        center: Text(
                          "$count",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.7), fontSize: 24.0),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.grey[700],
                        backgroundColor: Colors.white,
                      ))),
            ),
          ]),
        ]),
      ),
    );
  }
}
