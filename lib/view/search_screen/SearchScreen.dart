import 'package:amazonprimevideoclone/dummyDB.dart';
import 'package:amazonprimevideoclone/view/search_screen/widgets/FeaturedCollectionTile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/color_constants.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var _displayAll = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: colorConstants.mainBlack,
        centerTitle: false, // To align text in left
        leadingWidth: 0, // To align text in left
        title: Text("Search",
          style: TextStyle(color: colorConstants.mainwhite,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              height: 0.6
          ),
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

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      prefixIcon: Icon(Icons.search, color: Colors.black,),
                      suffixIcon: Icon(Icons.mic, color: Colors.black,),
                      hintText: "Search by actor, title ...",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: colorConstants.mainwhite,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text("Genres", style: TextStyle(
                    color: colorConstants.mainwhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),),
              ),
              // SizedBox(height: 20,),
              // Container(
              //     child: _gridContacts(),
              //     // GridView.builder(
              //     //   itemCount: 2,//myItems.length,
              //     //   padding: EdgeInsets.all(20),
              //     //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //     //     crossAxisCount: 2,
              //     //     mainAxisSpacing: 15,
              //     //     crossAxisSpacing: 15,
              //     //     mainAxisExtent: 250,
              //     //   ),
              //     //   itemBuilder: (context, index) => Column(
              //     //     crossAxisAlignment: CrossAxisAlignment.start,
              //     //     children: [
              //     //       Container(
              //     //         padding: EdgeInsets.all(15),
              //     //         height: 60,
              //     //         width: 300,
              //     //         decoration: BoxDecoration(
              //     //             borderRadius: BorderRadius.circular(10),
              //     //             color: Colors.grey.withOpacity(.2),
              //     //             // image: DecorationImage(
              //     //             //     fit: BoxFit.cover,
              //     //             //     image: NetworkImage(myItems[index]["url"]))
              //     //         ),
              //     //         alignment: Alignment.topRight,
              //     //         child: Text(
              //     //           "title",
              //     //           style: TextStyle(
              //     //               color: Colors.white,
              //     //               fontWeight: FontWeight.bold,
              //     //               fontSize: 18),
              //     //         ),
              //     //       ),
              //     //
              //     //     ],
              //     //   ),
              //     // )
              // ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text("Featured collections", style: TextStyle(
                    color: colorConstants.mainwhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),),
              ),
              SizedBox(height: 20,),
              ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      FeaturedCollectionTile(title: DummyDB.featuredCollectionsList[index],
                      ),
                  // Container(
                  //   height: 100,
                  //   color: Colors.red, ),
                  separatorBuilder: (context, index) =>
                      Divider(height: 0,
                        color: Colors.grey.shade900,

                      ),
                  itemCount: 10)

            ],
          ),
        ),
      ),
    );
  }

  Widget _gridContacts() 
  {
    final size = _displayAll ? DummyDB.genresList.length : DummyDB.genresList.length - 5;
    final genreListWidget = List.generate(
        size, (index) => _genreItem(DummyDB.genresList[index]))
      ..add(_seeNoSeeMore());
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 2/1,
      crossAxisSpacing: 15,
      mainAxisSpacing: 15,
      children: genreListWidget,);
  }

 

  Widget _genreItem(String item) {
    return Container(
      height: 50,
      width: 200,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colorConstants.mainGrey.withOpacity(0.5),
            ),
      child: Text(item, style: TextStyle(color: colorConstants.mainwhite,
      fontWeight: FontWeight.bold,
        fontSize: 18
      ),)
    );
  }

  Widget _seeNoSeeMore() {
    return InkWell(
      onTap: ()=>setState(()=>_displayAll = !_displayAll),
      child: Center(
        child: ElevatedButton(
            style:  ElevatedButton.styleFrom(
              //minimumSize: Size(300, 50),
              backgroundColor: colorConstants.mainGrey.withOpacity(0.5),
              //elevation: 10,
            ),
            onPressed: (){
          _displayAll = true;
          setState(() {

          });
        },
            child: Text("See more", style: TextStyle(color: colorConstants.mainwhite,

            ),))

      ),
    );
  }

}
