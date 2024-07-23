import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/color_constants.dart';

class LiveTVScreen extends StatefulWidget
{
  const LiveTVScreen({super.key});

  @override
  State<LiveTVScreen> createState() => _LiveTVScreenState();
}

class _LiveTVScreenState extends State<LiveTVScreen>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorConstants.mainBlack,
        centerTitle: false, // To align text in left
        leadingWidth: 0, // To align text in left
        title: Text("Live TV",
          style: TextStyle(color: colorConstants.mainwhite,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              height: 0.6
          ),
        ),
        actions: <Widget>[
          Icon(Icons.tab, color: colorConstants.mainwhite,),
          SizedBox(width: 20,),
          CircleAvatar(
            radius: 15,
            child: Image.asset("assets/images/user.png"),
          ),
          SizedBox(width: 20,),
        ],

      ),
    );
  }
}
