import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

import '../../../dummyDB.dart';
import '../../../utils/constants/color_constants.dart';

class AllTab extends StatefulWidget
{
  const AllTab({super.key});

  @override
  State<AllTab> createState() => _AllTabState();
}

class _AllTabState extends State<AllTab> {

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
  Widget build(BuildContext context)
  {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
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

          // Vertical Image Carousel Slider
          // Container(
          //   child: CarouselSlider(
          //     items: imageSliders,
          //     options: CarouselOptions(
          //       aspectRatio: 2.0,
          //       enlargeCenterPage: true,
          //       scrollDirection: Axis.vertical,
          //       autoPlay: true
          //     ),
          //   ),
          // )

        ],
      ),
    );
  }
}
