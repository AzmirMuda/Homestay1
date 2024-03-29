import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:homestayraya2/view/mainScreen.dart';
import '../Config.dart';
import '../model/user.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  // void initState(){
  //   super.initState();
  //     autoLogin();
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment:  Alignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/splashscreen.png')
            )
          ),
        ),
        //+padding
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        )
      ],
    );
  }

  // Future<void> autoLogin() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String email = (prefs.getString('email')) ?? '';
  //   String pass = (prefs.getString('pass')) ?? '';
  //   if (email.isNotEmpty) {
  //     http.post(Uri.parse("${Config.server}/homestay_raya/mobile/php/user_login.php"),
  //         body: {"email": email, "password": pass}).then((response) {
  //           print(response.body);
  //       var jsonResponse = json.decode(response.body);
  //       if (response.statusCode == 200 && jsonResponse['status'] == "success") {
          
  //         User user = User.fromJson(jsonResponse['data']);
  //         Timer(
  //             const Duration(seconds: 3),
  //             () => Navigator.pushReplacement(
  //                 context,
  //                 MaterialPageRoute(
  //                     builder: (content) => MainScreen(user: user))));
  //       } else {
  //         User user = User(
  //             id: "0",
  //             email: "unregistered",
  //             name: "unregistered",
  //             address: "na",
  //             phone: "0123456789",);
  //         Timer(
  //             const Duration(seconds: 3),
  //             () => Navigator.pushReplacement(
  //                 context,
  //                 MaterialPageRoute(
  //                     builder: (content) => MainScreen(user: user))));
  //       }
  //     });
  //   } else {
  //     User user = User(
  //         id: "0",
  //         email: "unregistered@email.com",
  //         name: "unregistered",
  //         address: "na",
  //         phone: "0123456789",);
  //     Timer(
  //         const Duration(seconds: 3),
  //         () => Navigator.pushReplacement(context,
  //             MaterialPageRoute(builder: (content) => MainScreen(user: user))));
  //   }
  // }
}