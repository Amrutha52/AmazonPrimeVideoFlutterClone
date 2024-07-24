import 'package:amazonprimevideoclone/utils/constants/image_constants.dart';
import 'package:amazonprimevideoclone/view/live_tv_screen/widgets/BBCKidsCard.dart';
import 'package:amazonprimevideoclone/view/live_tv_screen/widgets/LiveTVFanCodeCardBuilderWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../dummyDB.dart';
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
      backgroundColor: colorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: colorConstants.mainBlack,
        centerTitle: false, // To align text in left
        leadingWidth: 0, // To align text in left
        title: Text("Live TV",
          style: TextStyle(color: colorConstants.mainwhite,
              fontSize: 18,
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LiveTVFanCodeCardBuilderWidget(customHeight: 100,
              customWidth: 200,
              posterImages: DummyDB.verticalSliderList,
              title: "FanCode - Live and upcoming events",
              date: 'Jul 23',
              subScribeImage: imageConstants.SUBSCRIPTION_PNG,
              subScribeText: 'Subscribe',
              itemTitle: 'FanCode',
            ),
            SizedBox(height: 20,),
            Text("BBC Kids", style: TextStyle(color: colorConstants.mainwhite,
            fontWeight: FontWeight.bold,
              fontSize: 18
            ),),
            SizedBox(height: 20,),
            Row(
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(color: colorConstants.blackShade1),
                          child: Image.network("https://static.wikia.nocookie.net/cbeebies/images/8/8a/0C88F3FD-D255-43A2-9F86-CA04DBD5C88C.png/revision/latest?cb=20190815120730"),
                        ),
                        Positioned(
                            bottom: 10,
                            left: 12,
                            child: Image.asset(
                                height: 15,
                                width: 15,
                                imageConstants.SUBSCRIPTION_PNG)),
                      ],
                    )
                  ],
                ),
                SizedBox(width: 7,),
                BBCKidsCard()
              ],
            ),
            SizedBox(height: 20,),
            Text("BBC Player", style: TextStyle(color: colorConstants.mainwhite,
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),),
            SizedBox(height: 20,),
            Row(
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(color: colorConstants.blackShade1),
                          child: Image.network("https://static.wikia.nocookie.net/cbeebies/images/8/8a/0C88F3FD-D255-43A2-9F86-CA04DBD5C88C.png/revision/latest?cb=20190815120730"),
                        ),
                        Positioned(
                            bottom: 10,
                            left: 12,
                            child: Image.asset(
                                height: 15,
                                width: 15,
                                imageConstants.SUBSCRIPTION_PNG)),
                      ],
                    )
                  ],
                ),
                SizedBox(width: 7,),
                BBCKidsCard()
              ],
            ),
            SizedBox(height: 20,),
            Text("discovery+", style: TextStyle(color: colorConstants.mainwhite,
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),),
            SizedBox(height: 20,),
            Row(
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(color: colorConstants.blackShade1),
                          child: Image.network("https://us1-prod-images.disco-api.com/2021/6/15/e35d1f93-7b24-4bbe-a8c0-3a50ec0373c6.png?bf=0&f=png&p=true&q=85&w=140"),
                        ),
                        Positioned(
                            bottom: 10,
                            left: 12,
                            child: Image.asset(
                                height: 15,
                                width: 15,
                                imageConstants.SUBSCRIPTION_PNG)),
                      ],
                    )
                  ],
                ),
                SizedBox(width: 7,),
                BBCKidsCard()
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(color: colorConstants.blackShade1),
                          child: Image.network("https://upload.wikimedia.org/wikipedia/commons/b/b1/Travel_Channel_logo-white.png"),
                        ),
                        Positioned(
                            bottom: 10,
                            left: 12,
                            child: Image.asset(
                                height: 15,
                                width: 15,
                                imageConstants.SUBSCRIPTION_PNG)),
                      ],
                    )
                  ],
                ),
                SizedBox(width: 7,),
                BBCKidsCard()
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(color: colorConstants.blackShade1),
                          child: Image.network("https://upload.wikimedia.org/wikipedia/commons/a/a3/Dmax.png"),
                        ),
                        Positioned(
                            bottom: 10,
                            left: 12,
                            child: Image.asset(
                                height: 15,
                                width: 15,
                                imageConstants.SUBSCRIPTION_PNG)),
                      ],
                    )
                  ],
                ),
                SizedBox(width: 7,),
                BBCKidsCard()
              ],
            ),
            SizedBox(height: 20,),
            Text("Museum TV", style: TextStyle(color: colorConstants.mainwhite,
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),),
            SizedBox(height: 20,),
            Row(
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(color: colorConstants.blackShade1),
                          child: Image.network("https://play-lh.googleusercontent.com/_fWTXX0dOcF04qYxvLjv7br-CSJxGZN18wqpMKjkLQ_mKwaIn2OAT3aV4luNDoXG4fE=s256-rw"),
                        ),
                        Positioned(
                            bottom: 10,
                            left: 12,
                            child: Image.asset(
                                height: 15,
                                width: 15,
                                imageConstants.SUBSCRIPTION_PNG)),
                      ],
                    )
                  ],
                ),
                SizedBox(width: 7,),
                BBCKidsCard()
              ],
            ),
            SizedBox(height: 20,),
            Text("MyZen TV", style: TextStyle(color: colorConstants.mainwhite,
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),),
            SizedBox(height: 20,),
            Row(
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(color: colorConstants.blackShade1),
                          child: Image.network("https://advanced-television.com/wp-content/uploads/2021/04/zen.png"),
                        ),
                        Positioned(
                            bottom: 10,
                            left: 12,
                            child: Image.asset(
                                height: 15,
                                width: 15,
                                imageConstants.SUBSCRIPTION_PNG)),
                      ],
                    )
                  ],
                ),
                SizedBox(width: 7,),
                BBCKidsCard()
              ],
            ),
          ],
        ),
      ),
    );
  }
}


