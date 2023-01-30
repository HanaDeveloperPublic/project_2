import 'package:flutter/material.dart';
import 'package:project_2/components/my_text.dart';
import 'package:project_2/model/data_model.dart';

class Duaa extends StatelessWidget {
  const Duaa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              " الأدعية",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 24),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1, //                   <--- border width here
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 700,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1, //                   <--- border width here
                ),
              ),
              child: Center(
                child: ListView(children: [
                  const Center(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: MyText("أدعية قرآنية ", fontSize: 30),
                  )),
                  for (var duaa in Data.duaaList)
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(child: MyText(duaa.name, fontSize: 20)),
                          const Icon(Icons.check),
                        ],
                      ),
                    ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
