
import 'package:my_app3/Cart_Page.dart';
import 'package:my_app3/detailsPage.dart';
import 'package:my_app3/SpashScreen.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SpashScreen.dart';
void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

backgroundColor: Colors.transparent,
      body:
        Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: new Color.fromARGB(255,255,255,0),
                gradient: LinearGradient(
                    colors: [
                      new Color.fromARGB(255, 255, 77, 77).withOpacity(0.2),new Color.fromARGB(255, 102, 255, 255).withOpacity(0.2)],
                    begin:  Alignment.bottomCenter,
                    end: Alignment.topRight,
                ),
              ),
              child:Center(
              child:
             Container(
               decoration: BoxDecoration(
                 color: Color.fromARGB(255, 217 , 217,217).withOpacity(0.2),
                 borderRadius: BorderRadius.circular(30.0)
               ),
               height: 585.0,
               width: 398,
               child: ListView(
    children: <Widget>[
    _buildCartItems('assets/whitestreet.png',  ' Name : White Street\n', '@ 220',context),
    _buildCartItems('assets/east brother.png', ' Name : East brother\n', ' @ 250',context),
    _buildCartItems('assets/imperialScout.png', ' Name : Imperial Scout\n', '@ 280',context),
    _buildCartItems('assets/southTier.png', ' Name : South Tier\n', ' @ 290',context),
    _buildCartItems('assets/genius.png', ' Name : Genius Craft\n', ' @ 260',context)
    ],
    ),),
    ),),],));
  }
}

Widget _buildCartItems( String imgPath, String itemsName, String itemPrize, BuildContext context){
  return Padding(
    padding: EdgeInsets.only(left: 20.0,right: 10.0,top: 10.0,bottom: 20.0),
    child:Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color.fromARGB(255, 230, 230, 230).withOpacity(0.35),
      ),
      child:
    InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>DetailsPage(heroTag: imgPath,itemsNames: itemsName,itemsPrize: itemPrize,)
        ));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left:5,top: 10,bottom: 10,right: 10),
                ),
                Hero(
                  tag: imgPath,
                  child: Image(
                    image: AssetImage(imgPath),
                  fit: BoxFit.cover,
                    height: 70.0,
                    width: 70.0,
                  ),
                ),
                SizedBox(width:10.0),
                Padding(
                  padding: EdgeInsets.only(left:10.0),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      itemsName,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'FrederickatheGreat',
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      itemPrize,
                      style: TextStyle(
                        color: Colors.black,
                          fontFamily:  'SpeacialElite',
                          fontSize: 19.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5,right:5,top: 10,bottom: 10),
          ),
          CircleAvatar(
          backgroundColor: Colors.transparent,
            child:
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            color: Colors.black,
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CartPage(heroTag:imgPath,itemsNames: itemsName,itemsPrize: itemPrize,)));
            },
          )
          ),],
      ),
    ),
    ), );
}
