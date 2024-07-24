
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../dummyDB.dart';
import '../../../utils/constants/color_constants.dart';

class BBCKidsCard extends StatelessWidget
{
  const BBCKidsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 70,
        width: 200,
        child: ListView.builder(
          //scrollDirection: Axis.horizontal,
          itemCount: DummyDB.bbcKidsList.length,
          shrinkWrap: true,
            itemBuilder: (context, index) =>
                Container(
                  decoration: BoxDecoration(color: colorConstants.blackShade1),
              child: ListTile(
                title: Text(DummyDB.bbcKidsList[index]["time"].toString(), style: TextStyle(color: colorConstants.mainwhite)),
                subtitle: Text(DummyDB.bbcKidsList[index]["title"].toString(), style: TextStyle(color: colorConstants.mainwhite)),
              ),
            )
        ));
    // return Container(
    //   height: 60,
    //   width: 500,
    //   child: ListView.separated(
    //       shrinkWrap: true, // parameter which will tell the ListView to use a little space as possible,
    //       itemBuilder: (context, index) =>
    //           Container(
    //         height: 70,
    //         width: 80,
    //         decoration: BoxDecoration(
    //             color: colorConstants.blackShade1
    //         ),
    //             child: Column(
    //               children: [
    //                 Text(DummyDB.bbcKidsList[index]["time"].toString(), style: TextStyle(color: colorConstants.mainwhite),),
    //                 Text(DummyDB.bbcKidsList[index]["title"].toString(), style: TextStyle(color: colorConstants.mainwhite)),
    //               ],
    //             ),
    //       ),
    //       separatorBuilder: (context, index) => SizedBox(width: 5,),
    //       itemCount: DummyDB.bbcKidsList.length),
    // );
  }
}