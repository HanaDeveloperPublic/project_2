import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  const LoginButton();

  @override
  State<LoginButton> createState() => _LoginButton();
}

class _LoginButton extends State<LoginButton> {
  var likeColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: 397,
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            width: 300,
            height: 70,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xff00AEEF),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(5.0),
              color: const Color(0xff00AEEF),
              shape: BoxShape.rectangle,
            ),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  //View
                  Text(
                    "Log in",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.normal),
                  ),
                ]),
          )
        ]),
      )
    ]);
  }
}
