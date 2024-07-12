import 'package:amazonprimevideoclone/utils/constants/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DownloadsScreen extends StatefulWidget
{
  const DownloadsScreen({super.key});

  @override
  State<DownloadsScreen> createState() => _DownloadsScreenState();
}

class _DownloadsScreenState extends State<DownloadsScreen>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorConstants.mainBlack,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorConstants.mainBlack,
        title: Text("Downloads", style: TextStyle(color: colorConstants.mainwhite,
            fontSize: 20,
        fontWeight: FontWeight.bold),)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("No videos downloaded", style: TextStyle(color: colorConstants.mainwhite,
            fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
            Container(
              decoration: BoxDecoration(
                color: colorConstants.mainwhite
              ),
              child: Text("Find videos to download", style: TextStyle(color: colorConstants.mainBlack,
              fontSize: 14
              ),),
            )
          ],
        ),
      ),
    );
  }
}
