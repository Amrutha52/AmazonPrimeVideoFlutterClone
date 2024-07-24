
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/color_constants.dart';

class LiveTVFanCodeCardBuilderWidget extends StatelessWidget {
  const LiveTVFanCodeCardBuilderWidget({
    super.key,
    this.customHeight = 161,
    this.customWidth = 103,
    required this.posterImages,
    required this.title,
    required this.date,
    required this.subScribeImage,
    required this.subScribeText,
    required this.itemTitle,
  });

  final double customHeight;
  final double customWidth;
  final List<String> posterImages;
  final String title;
  final String itemTitle;
  final String date;
  final String subScribeImage;
  final String subScribeText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            title,
            style: TextStyle(
                color: colorConstants.mainwhite,
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 22),
        SizedBox(
          height: customHeight,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 12),
            itemCount: posterImages.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(posterImages[index])),
                  color: Colors.orange,
                  shape: BoxShape.rectangle),
              height: customHeight,
              width: customWidth,
              // child: Column(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     Container(
              //       height: 3,
              //       color: Colors.grey,
              //     ),
              //
              //   ],
              // ),
            ),
            separatorBuilder: (context, index) => SizedBox(
              width: 7,
            ),
          ),
        ),
        SizedBox(height: 22),
        Text(
          itemTitle,
          style: TextStyle(
              color: colorConstants.mainwhite,
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          date,
          style: TextStyle(
              color: colorConstants.mainwhite,
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20,),
       Row(
         children: [
           Container(
               height: 20,
               width: 20,
               child: Image.asset(subScribeImage)
           ),
           SizedBox(width: 10,),
           Text(
             subScribeText,
             style: TextStyle(
                 color: colorConstants.mainwhite,
                 fontSize: 14,
                 fontWeight: FontWeight.bold),
           ),
         ],
       )
      ],
    );
  }
}