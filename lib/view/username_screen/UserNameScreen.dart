import 'package:amazonprimevideoclone/dummyDB.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/color_constants.dart';
import '../../utils/constants/image_constants.dart';
import '../home_screen/HomeScreen.dart';

class UserNameScreen extends StatefulWidget
{
  const UserNameScreen({super.key});

  @override
  State<UserNameScreen> createState() => _UserNameScreenState();
}

class _UserNameScreenState extends State<UserNameScreen>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("Who's watching?", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
            ),
            SizedBox(height: 30,),
            GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 50),
                shrinkWrap: true,
                itemCount: DummyDB.usersList.length+1,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 120),
                itemBuilder: (context, index) {
                  if(index < DummyDB.usersList.length)
                  {
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                      },
                      child: Column(
                        children: [
                          Image.asset(DummyDB.usersList[index]["imagePath"]!),
                          SizedBox(height: 5,),
                          Text(DummyDB.usersList[index]["userName"]!,
                            style: TextStyle(fontSize: 13.25, color: colorConstants.mainwhite),)
                        ],
                      ),
                    );
                  }
                  else
                  {
                    return InkWell(
                      onTap: (){
                        DummyDB.usersList.add(
                          {"imagePath": imageConstants.USER_PNG, "userName": "sarovar"},
                        );
                        setState(() {});
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.yellow,
                            content: Text("Profile added successfully")));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 40,
                            child: Icon(Icons.add, color: Colors.white,),
                          ),
                          Text("New", style: TextStyle(
                            color: colorConstants.mainwhite,
                            fontSize: 13.25,
                          ),),
                        ],
                      ),
                    );
                  }
                }
                ),
          //Spacer(),
            SizedBox(height: 150,),
          Container(
           width: 300,
           height: 50,
           child: ElevatedButton(
           onPressed: () {},
           style: ElevatedButton.styleFrom(
            backgroundColor: colorConstants.mainwhite,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            elevation: 15.0,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Edit profiles',
              style: TextStyle(fontSize: 16, color: colorConstants.mainBlack),
            ),
          ),
        ),
              ),

            SizedBox(height: 10,),

            Text("Learn more", style: TextStyle(fontSize: 16, color: colorConstants.mainwhite, decoration: TextDecoration.underline, decorationColor: colorConstants.mainwhite, decorationThickness: 2, fontWeight: FontWeight.bold),)

          ],
        ),
      ),
    );
  }
}


