import 'package:flutter/material.dart';

import 'favorite_dhkir.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var newEmail = "";
  var newPassword = "";
  @override
  void initState() {
    super.initState();
    // This important if we have previous data for controller.
    // emailController.text = "Hana";
    // passwordController.text = "Hana@gmail.com";
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context, false),
          child: Icon(Icons.arrow_back_ios, color: Colors.grey.withOpacity(0.8)),
        ),
        title: const Text(" تسجيل الدخول",
            style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500)),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(" سجّل دخول ليتم عرض قائمة التفضيلات",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 20, fontWeight: FontWeight.w500)),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: TextField(
                controller: emailController,
                decoration:
                    const InputDecoration(hintText: "الرجاء ادخال البريد الإلكتروني ", border: OutlineInputBorder()),
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  newEmail = value;
                  setState(() {});
                },
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            SizedBox(
              child: TextField(
                controller: passwordController,
                decoration: const InputDecoration(hintText: "الرجاء ادخال كلمة المرور", border: OutlineInputBorder()),
                keyboardType: TextInputType.visiblePassword,
                onChanged: (value) {
                  newPassword = value;
                  setState(() {});
                },
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    final email = emailController.text;
                    final password = passwordController.text;
                    if (email != "hana@gmail.com" || password != "123") {
                      showDialog(
                        context: context,
                        builder: (_) {
                          return AlertDialog(
                            title: const Text('تنبيه'),
                            content: const Text('البريد الالكتروني او كلمة المرور غير صحيحة '),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                style: TextButton.styleFrom(textStyle: Theme.of(context).textTheme.labelLarge),
                                child: const Text('حسنا'),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (_) {
                          return AlertDialog(
                            title: const Text('تنبيه'),
                            content: const Text(' تم إدخال البيانات بشكل صحيح'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                style: TextButton.styleFrom(textStyle: Theme.of(context).textTheme.labelLarge),
                                child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const FavoriteDhkir()),
                                      );
                                    },
                                    child: const Text('حسنا')),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: Container(
                    width: 370,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "تسجيل الدخول",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     final email = emailController.text;
            //     final password = passwordController.text;
            //     if (email != "hana@gmail.com" || password != "123456") {
            //       showDialog(
            //         context: context,
            //         builder: (_) {
            //           return AlertDialog(
            //             title: const Text('Error'),
            //             content: const Text('Email or password not correct please try again '),
            //             actions: <Widget>[
            //               TextButton(
            //                 onPressed: () {
            //                   Navigator.of(context).pop();
            //                 },
            //                 style: TextButton.styleFrom(textStyle: Theme.of(context).textTheme.labelLarge),
            //                 child: const Text('Ok'),
            //               ),
            //             ],
            //           );
            //         },
            //       );
            //     } else {
            //       showDialog(
            //         context: context,
            //         builder: (_) {
            //           return AlertDialog(title: const Text('Correct'), content: const Text(''), actions: <Widget>[
            //             TextButton(
            //               onPressed: () {
            //                 Navigator.of(context).pop();
            //               },
            //               style: TextButton.styleFrom(textStyle: Theme.of(context).textTheme.labelLarge),
            //               child: const Text('Ok'),
            //             ),
            //           ]);
            //         },
            //       );
            //     }
            //   },
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.grey,
            //     padding: const EdgeInsets.all(20),
            //     textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //   ),
            //   child: const Text("Login"),
            // ),
          ],
        ),
      ),
    );
  }
}
