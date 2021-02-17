  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter/material.darts;

  class MessageCard extends StatelessWidget {
    const MessageCard({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 2,
              color: Colors.black12
            )
          ]
        ),
         width: 200,
          height: 400,
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
                color: Colors.amber,
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
          "",
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
            Text("Ms.Smiley",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            Text(
              "A few minutes ago",
              style: TextStyle(color: Colors.black38),
              )
            ],
          ),
        ),
      ],
      ),
      ),
      );
    }
  }

