import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_2/pages/about_app.dart';
import 'package:project_2/pages/page_view.dart';
import 'package:project_2/pages/web_view_page.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () => Navigator.pop(context, false),
            child: Icon(Icons.arrow_back_ios, color: Colors.grey.withOpacity(0.8)),
          ),
          title: const Text(" الإعدادات",
              style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500)),
          backgroundColor: Colors.white.withOpacity(0.9),
          centerTitle: true,
        ),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/ombreh.jpeg"), fit: BoxFit.cover),
            ),
            child: CupertinoApp(
              debugShowCheckedModeBanner: false,
              home: CupertinoPageScaffold(
                // navigationBar:
                //     const CupertinoNavigationBar(middle: Text("الإعدادات "), backgroundColor: CupertinoColors.white),
                child: Container(
                  color: CupertinoColors.extraLightBackgroundGray,
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(children: [
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: CupertinoColors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        width: double.infinity,
                        child: Column(children: [
                          Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            height: 70,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(width: 12),
                                  Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [Icon(Icons.star, color: Colors.grey)]),
                                  const SizedBox(width: 12),
                                  Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: const [Text("مرحبا بك ")])),
                                      ]),
                                  const Spacer(),
                                  const SizedBox(width: 5),
                                  const Icon(CupertinoIcons.right_chevron, color: CupertinoColors.inactiveGray),
                                  const SizedBox(width: 8)
                                ]),
                          ),
                        ]),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: CupertinoColors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Column(children: [
                          Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 38,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    SizedBox(width: 12),
                                    Icon(Icons.person, color: Colors.grey),
                                    SizedBox(width: 12),
                                    Text("الحساب"),
                                    Spacer(),
                                    SizedBox(width: 5),
                                    Icon(CupertinoIcons.right_chevron, color: CupertinoColors.inactiveGray),
                                    SizedBox(width: 8)
                                  ])),
                          const Divider(),
                          Container(
                              width: double.infinity,
                              height: 38,
                              alignment: Alignment.center,
                              child: Row(children: const [
                                SizedBox(width: 12),
                                Icon(Icons.settings, color: Colors.grey),
                                SizedBox(width: 12),
                                Text("عام"),
                                //Theme
                                Spacer(),
                                SizedBox(width: 5),
                                Icon(CupertinoIcons.right_chevron, color: CupertinoColors.inactiveGray),
                                SizedBox(width: 8)
                              ])),

                          const Divider(),
                          Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            height: 38,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const AboutApp()),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  SizedBox(width: 12),
                                  Icon(Icons.app_blocking, color: Colors.grey),
                                  SizedBox(width: 12),
                                  Text("عن التطبيق"),
                                  Spacer(),
                                  SizedBox(width: 5),
                                  Icon(CupertinoIcons.right_chevron, color: CupertinoColors.inactiveGray),
                                  SizedBox(width: 8)
                                ],
                              ),
                            ),
                          ),
                          // ),
                          const Divider(),
                          InkWell(
                            onTap: () {
                              //here hana
                              // _handleURLButtonPress(context, "https://pub.dev", "pub.dev");

                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => WebViewPage()),
                              );
                            },
                            child: Container(
                                alignment: Alignment.center,
                                width: double.infinity,
                                height: 38,
                                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      SizedBox(width: 12),
                                      Icon(Icons.swipe_up_alt, color: Colors.grey),
                                      SizedBox(width: 12),
                                      Text("الشروط و الأحكام"),
                                      Spacer(),
                                      SizedBox(width: 5),
                                      Icon(CupertinoIcons.right_chevron, color: CupertinoColors.inactiveGray),
                                      SizedBox(width: 8)
                                    ])),
                          ),
                        ]),
                      ),
                    ),
                    const SizedBox(height: 14),
                    const SizedBox(height: 8),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: const BoxDecoration(
                                color: CupertinoColors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
                            width: double.infinity,
                            child: Column(children: [
                              InkWell(
                                onTap: () {
                                  //here hana
                                  // _handleURLButtonPress(context, "https://pub.dev", "pub.dev");

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const KindaCodeDemo()),
                                  );
                                },
                                child: Container(
                                    alignment: Alignment.center,
                                    width: double.infinity,
                                    height: 38,
                                    child: Row(
                                        //KindaCodeDemo
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          SizedBox(width: 12),
                                          Icon(Icons.lock_clock, color: Colors.grey),
                                          SizedBox(width: 12),
                                          Text("التذكيرات"),
                                          Spacer(),
                                          Icon(CupertinoIcons.right_chevron, color: CupertinoColors.inactiveGray),
                                          SizedBox(width: 8)
                                        ])),
                              ),
                              const Divider(),
                              Container(
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  height: 38,
                                  child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        SizedBox(width: 12),
                                        Icon(Icons.notification_add, color: Colors.grey),
                                        SizedBox(width: 12),
                                        Text("الإشعارات"),
                                        Spacer(),
                                        Icon(CupertinoIcons.right_chevron, color: CupertinoColors.inactiveGray),
                                        SizedBox(width: 8)
                                      ]))
                            ]))),
                    const SizedBox(height: 8),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: const BoxDecoration(
                                color: CupertinoColors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
                            width: double.infinity,
                            child: Column(children: [
                              Container(
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  height: 38,
                                  child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        SizedBox(width: 12),
                                        Icon(Icons.help, color: Colors.grey),
                                        SizedBox(width: 12),
                                        Text("المساعدة"),
                                        Spacer(),
                                        Icon(CupertinoIcons.right_chevron, color: CupertinoColors.inactiveGray),
                                        SizedBox(width: 8)
                                      ]))
                            ])))
                  ]),
                ),
              ),
            )));
  }
}
