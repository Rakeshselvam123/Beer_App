
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app3/main.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: new Color.fromARGB(255,230,230,0),
              gradient: LinearGradient(
                colors: [
                  new Color.fromARGB(255, 255, 77, 77),new Color.fromARGB(255, 102, 255, 255)],
                begin:  Alignment.centerRight,
                end: Alignment.centerLeft
              ),
    ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Color.fromARGB(255,255, 204,0),
              radius: 100.0,
              child: IconButton(
                iconSize: 125,
                icon: Image(image: AssetImage('assets/img_479474beer.png'),
                  fit: BoxFit.cover
                ),
                color: Colors.black,
                onPressed:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FirstScreen(),)
                  );}
              )
            ),
          Padding(
    padding: EdgeInsets.only(top: 30),
          ),
            Text('BEER CART',style: TextStyle(
    fontWeight: FontWeight.bold,
              fontSize: 30.0,
              fontFamily: 'SpeacialElite',
              color: Colors.black
    ),
            ),],
        ),
        ],),
              );
  }
}
