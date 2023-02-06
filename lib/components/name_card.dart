import 'package:flutter/material.dart';
import 'package:project_2/model/data_model.dart';

class NameCard extends StatefulWidget {
  const NameCard({super.key});

  @override
  State<NameCard> createState() => _NameCardState();
}

class _NameCardState extends State<NameCard> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.9),
        appBar: AppBar(
          leading: InkWell(
            onTap: () => Navigator.pop(context, false),
            child: Icon(Icons.arrow_back_ios, color: Colors.grey.withOpacity(0.8)),
          ),
          title: const Text("  أسماء الله الحسنى",
              style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500)),
          backgroundColor: Colors.white.withOpacity(0.9),
          centerTitle: true,
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(8),
                color: Colors.purple[100],
                child: Column(children: [
                  Text(
                    Data.NameList[0].name,
                    textAlign: TextAlign.end,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    Data.NameList[0].description,
                    textAlign: TextAlign.end,
                  ),
                ])),
            Container(
                padding: const EdgeInsets.all(8),
                color: Colors.purple[200],
                child: Column(children: [
                  Text(
                    Data.NameList[1].name,
                    textAlign: TextAlign.end,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    Data.NameList[1].description,
                    textAlign: TextAlign.end,
                  ),
                ])),
            Container(
                padding: const EdgeInsets.all(8),
                color: Colors.purple[300],
                child: Column(children: [
                  Text(
                    Data.NameList[2].name,
                    textAlign: TextAlign.end,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    Data.NameList[2].description,
                    textAlign: TextAlign.end,
                  ),
                ])),
            Container(
                padding: const EdgeInsets.all(8),
                color: Colors.purple[400],
                child: Column(children: [
                  Text(
                    Data.NameList[3].name,
                    textAlign: TextAlign.end,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    Data.NameList[3].description,
                    textAlign: TextAlign.end,
                  ),
                ])),
            Container(
                padding: const EdgeInsets.all(8),
                color: Colors.purple[500],
                child: Column(children: [
                  Text(
                    Data.NameList[4].name,
                    textAlign: TextAlign.end,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    Data.NameList[4].description,
                    textAlign: TextAlign.end,
                  ),
                ])),
            Container(
                padding: const EdgeInsets.all(8),
                color: Colors.purple[600],
                child: Column(children: [
                  Text(
                    Data.NameList[5].name,
                    textAlign: TextAlign.end,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    Data.NameList[5].description,
                    textAlign: TextAlign.end,
                  ),
                ])),
          ],
        ));
  }
}
