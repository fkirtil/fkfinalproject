//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fatmakirtilproject/Profile.dart';
import 'package:fatmakirtilproject/main.dart';
import 'package:flutter/material.dart';
import 'package:fatmakirtilproject/main.dart';
import 'dart:math';

//import 'package:flutter_svg/flutter_svg.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();

  //TextEditingController content = TextEditingController();
}
void gotoProfile(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => Profile()),
  );
}
void gotoMessage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => Message()),
  );
}

class _MessageState extends State<Message> {



 // TextEditingController content = TextEditingController();

  //CollectionReference ref = Firestore.instance.collection("notes");

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.cancel_outlined, color: Colors.grey,
                    size: 30,), onPressed: () { gotoProfile(context);}
        ),
        centerTitle: true,
        title: Text("Notes"),
        actions: [
          FlatButton(onPressed: () {
            //ref.add({
              //'content': content.text
            //}).whenComplete(() => Navigator.pop(context));
            //}).whenComplete(() => Navigator.pop(context));
          }, child: Text('Save'))
        ],
      ),

      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              /*Expanded(
                flex: 0,
                child: _headerSectionWidget,
              ),*/
              Expanded(
                flex: 10,
                child: _middleSectionWidget,
              ),

            ],
          ),
        ),
      ),
    );
  }

  Padding get _headerSectionWidget =>
      Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 11.0),
            ),
          ],
        ),
      );

  Padding get _middleSectionWidget =>
      Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              //margin: EdgeInsets.only(top: size.height * 0.3),
              //padding: EdgeInsets.only(top: size),
               //height: 510,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              //child: Image.asset("assets/images/slowlyapp.png")
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          /*Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 0
                            ),
                            child: Text("Color"),
                          ),*/
                          Padding(
                            padding: const EdgeInsets.only(left: 265, top: 8.0),
                            child: Container(
                              width: 95,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                image: DecorationImage(
                                  image: AssetImage("images/korsan.jpg"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  /*Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 110,
                      horizontal: 20
                    ),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Content'),
                    ),
                  ),*/
                  SizedBox(height: 10,),
                  SafeArea(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(border: Border.symmetric(
                        vertical: BorderSide.none,
                      )

                      ),
                      child: TextField(
                        //controller: content,
                        decoration: InputDecoration(hintText: 'Enter a new note'),
                        maxLines: null,
                        //expands: true,
                      ),
                    ),
                  ),
                  SizedBox(height: 150,),
                ],

              ),


            ),

          ],
        ),
      );


}
