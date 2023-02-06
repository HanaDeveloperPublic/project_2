import 'package:flutter/material.dart';
import 'package:project_2/components/my_text.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context, false),
          child: Icon(Icons.arrow_back_ios, color: Colors.grey.withOpacity(0.8)),
        ),
        title:
            const Text(" عن التطبيق", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500)),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(border: Border.all(width: 1)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(border: Border.all(width: 1)),
              width: 400,
              height: 700,
              child: Center(
                child: ListView(children: const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: MyText(" يعرض تطبيق الأذكار مجموعة من الأقسام الأساسية من الذكر ", fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: MyText(
                      " \n أذكار الصباح \n أذكار المساء \n التسبيح \n آيه و فائدة \n",
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: MyText(
                        "\n     يمكنك ايضا اضافة الأذكار و الأدعية الى المفضلة و تكونخاصة بك وتستطيع الرجوع لها بأي وقت  ",
                        fontSize: 20),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
