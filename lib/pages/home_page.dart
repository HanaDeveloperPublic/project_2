import 'package:flutter/material.dart';
import 'package:project_2/components/large_category.dart';

import '../components/category.dart';
import '../components/features.dart';
import '../components/tasbih.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
                child: SizedBox(
              child: Text("test drawer"),
            )),
            SizedBox(
              child: Column(children: <Widget>[
                ListTile(
                    leading: const Icon(
                      Icons.info,
                      color: Colors.black,
                    ),
                    onTap: () {
                      setState(() {
                        //    text = "info pressed";
                      });
                    }),
                ListTile(
                    leading: const Icon(Icons.save),
                    onTap: () {
                      setState(() {
                        //   text = "save pressed";
                      });
                    }),
                ListTile(
                    leading: const Icon(Icons.settings),
                    onTap: () {
                      setState(() {
                        // text = "settings pressed";
                      });
                    }),
              ]),
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              " الرئيسة",
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
          ListView(
        padding: const EdgeInsets.all(24),
        children: const [
          SizedBox(
            height: 20,
          ),
          Features(),
          Category(),
          SizedBox(height: 36),
          LargeCategory(),
          SizedBox(height: 36),
          LargeCategory2()
        ],
      ),
      // )
    );
  }
}
