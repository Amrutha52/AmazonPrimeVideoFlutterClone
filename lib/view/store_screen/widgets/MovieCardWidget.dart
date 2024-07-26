

import 'package:amazonprimevideoclone/model/storeMovie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/color_constants.dart';

class MovieCardWidget extends StatelessWidget
{
  final double customHeight;
  final double customWidth;
  final storeMovie posterImages;
  final storeMovie subTitle;

  const MovieCardWidget({
    super.key,
    this.customHeight = 161,
    this.customWidth = 103,
    required this.posterImages,
    required this.subTitle,
  });



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: InkWell(
        onTap: () {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: ((context) => MovieDetailScreen())));
        },
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: customHeight,
                width: customWidth,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    "${posterImages.movieImage}",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text("${posterImages.subTitle}", style: TextStyle(
                  color: colorConstants.mainwhite,
                  fontSize: 14,
                  fontWeight: FontWeight.normal
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
