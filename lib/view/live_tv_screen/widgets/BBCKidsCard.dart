
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

  }
}

// class BBCKidsCard extends StatelessWidget
// {
//   final double customHeight;
//   final double customWidth;
//   final String title;
//   final String subTitle;
//
//   const BBCKidsCard({
//     super.key,
//     this.customHeight = 161,
//     this.customWidth = 103,
//     required this.title,
//     required this.subTitle,
//   });
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 12.0),
//       child: InkWell(
//         onTap: () {
//           // Navigator.push(context,
//           //     MaterialPageRoute(builder: ((context) => MovieDetailScreen())));
//         },
//         child: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: customHeight,
//                 width: customWidth,
//                 child: Text("${title}", style: TextStyle(
//                     color: colorConstants.mainwhite,
//                     fontSize: 14,
//                     fontWeight: FontWeight.normal
//                 ),),
//               ),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }