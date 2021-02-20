import 'package:fatmakirtilproject/Message.dart';
import 'package:fatmakirtilproject/Profile.dart';
import 'package:fatmakirtilproject/main.dart';
import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';


  class MessageCard extends StatelessWidget {
    const MessageCard({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 8,  // mesaj kartlarına gölge atıyor
              color: Colors.black12
            )
          ]
        ),
         width: 200,
          height: 400,
          child: InkWell(  //mesaj kartlarına tıklayınca mesaj sayfasına yönlendiriyor.
            onTap: () {
              print("Tapped");
              Navigator.push(context, MaterialPageRoute(builder: (context) => Message()),);
            },
          child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    child: Container(
                      width: 5,
                      height: 5,
                      color: Colors.teal,
                    ),
                  ),
                  Image.asset(
                    "",
                    height: 100,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                "“As Gregor Samsa awoke one morning from uneasy dreams he found himself transformed in his bed into an enormous insect.” ",
                style: TextStyle(
                  fontFamily: 'Gregor',
                  fontSize: 15,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 8,
               ),
              ),
            Expanded(
              flex: 1,
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text("Note",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,)),
                  Text(
                    "Two days ago",
                    style: TextStyle(color: Colors.black38),
                    )
                  ],
                ),
              ),
            ],
            ),
            ),
          ),
            );
          }
        }

