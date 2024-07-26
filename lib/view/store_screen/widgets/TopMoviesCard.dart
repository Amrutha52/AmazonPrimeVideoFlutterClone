// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:amazonprimevideoclone/model/storeMovie.dart';
import 'package:amazonprimevideoclone/view/store_screen/widgets/MovieCardWidget.dart';
import 'package:flutter/material.dart';


class TopMoviesCard extends StatelessWidget {
  final storeMovie movie;
  final storeMovie subTitle;
  final int index;
  const TopMoviesCard({
    Key? key,
    required this.movie,
    required this.index,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          height: 140,
          width: 270,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: MovieCardWidget(
              customHeight: 140,
              customWidth: 250,
              posterImages: movie,
            subTitle: subTitle,),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Text(
            (index + 1).toString(),
            style: const TextStyle(
                fontSize: 80, fontWeight: FontWeight.w800, color: Colors.white),
          ),
        )
      ],
    );
  }
}
