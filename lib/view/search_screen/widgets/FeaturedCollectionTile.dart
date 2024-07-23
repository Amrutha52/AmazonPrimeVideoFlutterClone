import 'package:amazonprimevideoclone/utils/constants/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeaturedCollectionTile extends StatelessWidget
{

  const FeaturedCollectionTile({super.key,
    required this.title
  });

  final String title;
  
  @override
  Widget build(BuildContext context)
  {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            Text(title, style: TextStyle(color: colorConstants.mainwhite, fontSize: 14),),
            Spacer(),
            Icon(Icons.arrow_forward_ios_rounded, color: colorConstants.mainwhite,)
          ],
        ),
      ),
    );
  }
}
