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
            SizedBox(height: 40,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(300, 50),
                backgroundColor: colorConstants.mainwhite,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 10,
              ),
                onPressed: (){

                },
                child: Text("Find videos to download", style: TextStyle(
                  color: colorConstants.mainBlack,
                  fontSize: 16,
                ),)
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Auto Downloads: On ", style: TextStyle(color: colorConstants.mainwhite,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(width: 10,),
                Text(".", style: TextStyle(color: colorConstants.mainGrey,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(width: 10,),
                Text("Manage ", style: TextStyle(color: colorConstants.mainBlue,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
