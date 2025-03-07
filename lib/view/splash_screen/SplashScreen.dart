import 'package:amazonprimevideoclone/login_screen/LoginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/image_constants.dart';
import '../username_screen/UserNameScreen.dart';

class Splashscreen extends StatefulWidget
{
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
{
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3))
        .then((value)
    {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UserNameScreen())); // UserNameScreen()

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(imageConstants.LOGO_PNG,),
      ),
    );
  }
}

