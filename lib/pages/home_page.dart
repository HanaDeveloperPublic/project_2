import 'package:flutter/material.dart';
import 'package:project_2/components/large_category.dart';
import 'package:project_2/components/name.dart';
import 'package:project_2/pages/settings.dart';

import '../components/ayah.dart';
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
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Settings()),
            );
          },
          child: const Icon(
            Icons.settings,
            color: Colors.grey,
          ),
        ),
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
          Text(" الرئيسة", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500)),
        ]),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(padding: const EdgeInsets.all(24), children: const [
        SizedBox(height: 20),
        Features(),
        Category(),
        SizedBox(height: 36),
        Ayah(),
        SizedBox(height: 24),
        Name(),
        SizedBox(height: 24),
        LargeCategory(),
        SizedBox(height: 36),
        LargeCategory2(),
        SizedBox(height: 36),
      ]),
      drawer: Drawer(
        child: ListView(children: <Widget>[
          const DrawerHeader(curve: Curves.fastOutSlowIn, child: SizedBox(child: Text("test drawer"))),
          SizedBox(
            child: Column(children: <Widget>[
              ListTile(
                leading: const Icon(Icons.info, color: Colors.black),
                onTap: () {
                  setState(() {});
                },
              ),
              ListTile(
                leading: const Icon(Icons.save),
                onTap: () {
                  setState(() {});
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                onTap: () {
                  setState(() {});
                },
              ),
            ]),
          ),
        ]),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
