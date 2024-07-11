import 'package:amazonprimevideoclone/utils/constants/color_constants.dart';
import 'package:amazonprimevideoclone/view/home_screen/tabs/AllTabs.dart';
import 'package:amazonprimevideoclone/view/home_screen/tabs/MoviesTab.dart';
import 'package:amazonprimevideoclone/view/home_screen/tabs/TVShowsTab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: colorConstants.mainBlack,
          appBar: AppBar(
            backgroundColor: colorConstants.mainBlack,
            centerTitle: false, // To align text in left
            leadingWidth: 0, // To align text in left
            title: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("prime video",
                  style: TextStyle(color: colorConstants.mainwhite,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      height: 0.6
                  ),
                ),
                Image.network(
                    width: 60,
                    "https://t3.ftcdn.net/jpg/06/41/15/32/360_F_641153298_zG4JMOP3RGnp2zTbpFU66vjxIKhdHQiA.jpg")
              ],
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
            bottom: TabBar(

                unselectedLabelColor: Colors.white54,
                labelColor: colorConstants.mainBlack,
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 3,
                indicator: BoxDecoration(
                  color: colorConstants.mainwhite,
                  borderRadius: BorderRadius.circular(20),
                ),
                dividerHeight: 0,
                
                //isScrollable: true, // scrolling behavior kodukkan pattum
                // dividerHeight: 0, // means oru underline varunathe povum
                //indicator: BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(10)), // Indicator background color varum
                tabs: [

                  Tab(child: Text("All"),),
                  Tab(child: Text("Movies"),),
                  Tab(child: Text("TV shows"),),
                ]),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  child: TabBarView(
                    // physics: NeverScrollableScrollPhysics(), swipe cheythal marilla. click cheythale marullu
                      children: [
                        AllTab(),
                        MoviesTab(),
                        TVShowsTab(),

                      ]),
                ),
              ],
            ),
          ),

        ),
    );
  }
}
