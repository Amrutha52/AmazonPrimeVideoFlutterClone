import 'package:amazonprimevideoclone/dummyDB.dart';
import 'package:amazonprimevideoclone/utils/constants/color_constants.dart';
import 'package:amazonprimevideoclone/view/home_screen/tabs/AllTabs.dart';
import 'package:amazonprimevideoclone/view/home_screen/tabs/MoviesTab.dart';
import 'package:amazonprimevideoclone/view/home_screen/tabs/TVShowsTab.dart';
import 'package:amazonprimevideoclone/view/home_screen/widgets/MovieScreenCardWidget.dart';
import 'package:amazonprimevideoclone/view/store_screen/widgets/MovieCardWidget.dart';
import 'package:amazonprimevideoclone/view/store_screen/widgets/StoreMovieCardBuilderWidget.dart';
import 'package:amazonprimevideoclone/view/store_screen/widgets/TopMoviesCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class StoreScreen extends StatefulWidget
{
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen>
{
  /**
   * ImageCarouselWithIndicator
   */
  CarouselController buttonCarouselController = CarouselController();
  int _current = 0;  // current index

  final List<Widget> imageSliders = DummyDB.verticalSliderList
      .map((item) => Container(
    child: Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(item, fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  // child: Text(
                  //  ' ${DummyDB.verticalSliderList.indexOf(item)} ',
                  //   style: TextStyle(color: Colors.white,
                  //     fontSize: 20.0, fontWeight: FontWeight.bold,),
                  // ),
                ),
              ),
            ],
          )),
    ),
  )).toList();

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
          title: Text("Store", style: TextStyle(color: colorConstants.mainwhite,
              fontWeight: FontWeight.bold,
            fontSize: 18
          ),),
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
                Tab(child: Text("Rent"),),
                Tab(child: Text("Channels"),),
              ]),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //   height: 40,
              //   width: 40,
              //   child: TabBarView(
              //     // physics: NeverScrollableScrollPhysics(), swipe cheythal marilla. click cheythale marullu
              //       children: [
              //         AllTab(),
              //         MoviesTab(),
              //         TVShowsTab(),
              //       ]),
              // ),
              SizedBox(height: 20,),
              Container(
                child:  CarouselSlider(
                  items: imageSliders,
                  carouselController: buttonCarouselController,
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason){
                      setState(() {
                        _current = index;
                      });
                    },

                  ),

                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: DummyDB.verticalSliderList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => buttonCarouselController.animateToPage(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                              .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              ),
              DotsIndicator(
                dotsCount: DummyDB.verticalSliderList.length,
                position: _current.toDouble(),
                decorator: DotsDecorator(
                    activeColor: colorConstants.mainwhite,
                    color: Colors.grey // Inactive Color
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "VROTT - Most popular",
                style: TextStyle(
                    color: colorConstants.mainwhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    itemCount: DummyDB.storeList1.length,
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return MovieCardWidget(
                        customHeight: 100,
                        customWidth: 250,
                        posterImages: DummyDB.storeList1[index],
                        subTitle: DummyDB.storeList1[index],
                      );
                    }),
               ),

              SizedBox(height: 10,),
              Text(
                "In the spotlight",
                style: TextStyle(
                    color: colorConstants.mainwhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 300,
                child: ListView.builder(
                    itemCount: DummyDB.storeSpotLightList1.length,
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return MovieCardWidget(
                        customHeight: 200,
                        customWidth: 100,
                        posterImages: DummyDB.storeSpotLightList1[index],
                        subTitle: DummyDB.storeSpotLightList1[index],
                      );
                    }),
              ),
              SizedBox(height: 10,),
              Text(
                "Movies from the last Decade",
                style: TextStyle(
                    color: colorConstants.mainwhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    itemCount: DummyDB.storeSpotLightList1.length,
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return MovieCardWidget(
                        customHeight: 100,
                        customWidth: 250,
                        posterImages: DummyDB.storeSpotLightList1[index],
                        subTitle: DummyDB.storeSpotLightList1[index],
                      );
                    }),
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: () {},
                child: Text(
                  "Top 10 in United States",
                  style: TextStyle(
                      color: colorConstants.mainwhite,
                      fontSize: 21,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    itemCount: DummyDB.storeSpotLightList1.length,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return TopMoviesCard(
                        movie: DummyDB.storeSpotLightList1[index],
                        index: index,
                        subTitle: DummyDB.storeSpotLightList1[index],
                      );
                    }),
              ),
              SizedBox(height: 10,),
              Text(
                "Romance Movies",
                style: TextStyle(
                    color: colorConstants.mainwhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    itemCount: DummyDB.storeSpotLightList1.length,
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return MovieCardWidget(
                        customHeight: 100,
                        customWidth: 250,
                        posterImages: DummyDB.storeSpotLightList1[index],
                        subTitle: DummyDB.storeSpotLightList1[index],
                      );
                    }),
              ),
              SizedBox(height: 10,),
              Text(
                "Fantasy Movies",
                style: TextStyle(
                    color: colorConstants.mainwhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    itemCount: DummyDB.storeSpotLightList1.length,
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return MovieCardWidget(
                        customHeight: 100,
                        customWidth: 250,
                        posterImages: DummyDB.storeSpotLightList1[index],
                        subTitle: DummyDB.storeSpotLightList1[index],
                      );
                    }),
              ),

            ],
          ),
        ),

      ),
    );
  }
}
