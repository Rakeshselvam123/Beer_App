import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app3/main.dart';
class CartPage extends StatefulWidget {
  final heroTag;
  final itemsNames;
  final itemsPrize;
  CartPage({this.heroTag,this.itemsNames,this.itemsPrize});
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,102,255,255).withOpacity(0.2),
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=> FirstScreen()
            ));
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Cart Page',
          style: TextStyle(
            fontFamily: 'Montserrat', fontSize: 18.0, color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            onPressed: () {},
            color: Colors.white,
          )
        ],
      ),
      body:Stack(
          fit: StackFit.expand,
          children: <Widget>[
      Container(
      decoration: BoxDecoration(
          color: new Color.fromARGB(255,230,230,0),
      gradient: LinearGradient(
          colors: [
            new Color.fromARGB(255, 102, 255,255).withOpacity(0.2),new Color.fromARGB(255, 102, 255, 255).withOpacity(0.2)],
          begin:  Alignment.bottomCenter,
          end: Alignment.topRight,
      ),
    ),
    ),
      Builder(
        builder: (context) {
          return ListView(
            children: <Widget>[
              createCartList(
              ),
              ]
          );
        }),],),);
    }
  createCartList() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, position) {
        return createCartListItem();
      },
      itemCount: 1,
    );
  }

    createCartListItem() {
      return Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      color: Colors.transparent,
                      image: DecorationImage(
                          image: AssetImage(widget.heroTag))),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(right: 8, top: 4),
                          child: Text(
                            widget.itemsNames,
                            maxLines: 2,
                            softWrap: true,
                            style: TextStyle
                              (
                              fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontSize: 15.0),
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                widget.itemsPrize,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
      fontFamily: 'Montserrat',color: Colors.black),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    RaisedButton(
                                      elevation: 6.0,
                                  onPressed: (){
                                        payOnline(context);
                                             },
                                        color: Colors.black,
                                    child:
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                      child:Text(
                                       'PAY',style: TextStyle(
      color: Colors.white,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold
      ),
                                     ),
                              )
                                  ), ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],)
                    ),),],
            ),
          ),
        ],
      );
}

  void payOnline(BuildContext context) {

    var alertDialog= AlertDialog(
      title: Text('PAY HERE'),
      content: Text('Loading ....'),
    );
    showDialog(context: context,
        builder: (context)
    {
      return alertDialog;
    });
  }
    }