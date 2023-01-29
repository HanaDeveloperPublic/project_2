import 'package:flutter/material.dart';
import 'package:project_2/model/data_model.dart';

class VerticalDhkir extends StatelessWidget {
  const VerticalDhkir({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          children: [
            //favoriteDhkirList
            for (var combineDhkir in Data.favoriteDhkirList)
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 35, top: 30),
                child: Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          combineDhkir.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              combineDhkir.numberOfRepeat,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              combineDhkir.period,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
