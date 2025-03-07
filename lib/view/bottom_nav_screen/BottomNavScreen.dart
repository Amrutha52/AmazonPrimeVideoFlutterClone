import 'package:amazonprimevideoclone/ContactsPage.dart';
import 'package:amazonprimevideoclone/view/downloads_screen/DownloadsScreen.dart';
import 'package:amazonprimevideoclone/view/live_tv_screen/LiveTVScreen.dart';
import 'package:amazonprimevideoclone/view/store_screen/StoreScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/color_constants.dart';
import '../home_screen/HomeScreen.dart';
import '../search_screen/SearchScreen.dart';

class BottomNavScreen extends StatefulWidget
{
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen>
{
  int selectedIndex = 0;
  List<Widget> myScreens = [
    HomeScreen(),
    StoreScreen(),
    LiveTVScreen(),
    DownloadsScreen(),
    //JioTVSearchPage()
    SearchScreen()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myScreens[selectedIndex],
      backgroundColor: colorConstants.mainBlack,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: colorConstants.mainBlack,
        selectedItemColor: colorConstants.mainwhite,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 10,
        selectedFontSize: 10,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal,),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white,),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined, color: Colors.white,),
              label: "Store",
          ),
          BottomNavigationBarItem(
            label: "Live TV",
            icon: Icon(Icons.live_tv_rounded, color: Colors.white,),
          ),
          BottomNavigationBarItem(
            label: "Downloads",
            icon: Icon(Icons.file_download_outlined, color: Colors.white,),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search, color: Colors.white,),
          ),
        ],
        onTap: (value){
          selectedIndex = value;
          setState(() {

          });
        },
      ),
    );
  }
}
