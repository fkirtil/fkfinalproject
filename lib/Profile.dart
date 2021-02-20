import 'package:flutter/material.dart';

import 'dart:math';

import 'package:fatmakirtilproject/Message.dart';

import 'package:fatmakirtilproject/MessageCard.dart';


void gotoMessage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => Message()),
  );
}

class Profile extends StatefulWidget {
  const Profile({
    Key key,
  }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}



class _ProfileState extends State<Profile> {
  @override
  void initState() {}

    @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: _headerSectionWidget,
              ),
              Expanded(
                flex: 3,
                child: _middleSectionWidget(),
              ),
              Expanded(
                flex: 1,
                child: _footerSectionWidget,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding get _footerSectionWidget =>
      Padding(
          padding: const EdgeInsets.only(top: 20, left: 8),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Transform.rotate(
                    angle: - pi / 4,
                    child: Icon(
                      Icons.send,
                      color: Colors.teal,
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text("Share"),
                ],
              ),
              Container(
                height: 2,
                margin: EdgeInsets.only(top: 8),
                width: double.infinity,
                color: Colors.teal,
              )
            ],
          )
      );


  ListView _middleSectionWidget() {
    return ListView.separated(
      padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
      separatorBuilder: (BuildContext bcs, index) {
        return SizedBox(
          width: 10,
        );
      },
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext bc, index) {

        return index == 0
            ? Row(
          children: <Widget>[
            Container(
              width: 1,
            ),
            MessageCard()
          ],
        )
            : MessageCard();
      },
    );
  }


  Padding get _headerSectionWidget =>
      Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              width: 110,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(
                  image: AssetImage("images/sir.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "My Notes",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Mynotes',
                ),
              ),
            ),
          ],
        ),
      );



}
