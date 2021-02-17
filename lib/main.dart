    import 'dart:math';

    import 'package:flutter/material.dart';
    import 'package:fatmakirtilproject/MessageCard.dart';
    import 'package:bottom_navigation_badge/bottom_navigation_badge.dart';

    void main() => runApp(fatmakirtilproject());
    class fatmakirtilproject extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: new SlowlyHome(),
      );
    }
  }
    class SlowlyHome extends StatefulWidget {
      const SlowlyHome({
        Key key,
      }) : super(key: key);

      @override
      _SlowlyHomeState createState() => _SlowlyHomeState();
    }

    class _SlowlyHomeState extends State<SlowlyHome> {
      int _currentIndex = 0;

      @override
      void initState() {
      super.initState();
      _setBadge();
      }

      void _setBadge() {
        setState(() {
          items = badger.setBadge(items, "1", 1);
        });
      }

      BottomNavigationBadge badger = new BottomNavigationBadge(
          backgroundColor: Colors. red,
          badgeShape: BottomNavigationBadgeShape.circle,
          textColor: Colors.white,
          position: BottomNavigationBadgePosition.topRight,
          textSize: 12);

      @override
      Widget build(BuildContext context) {
        var emptyWidth = MediaQuery.of(context).size.width * 0.20;
        return Scaffold(

            bottomNavigationBar: BottomNavigationBar(
                currentIndex: _currentIndex,
                showSelectedLabels: false,
                backgroundColor: Colors.white,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
        type: BottomNavigationBarType.fixed,
        items: items,
      ),
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
              child: Container(),
            ),
            Expanded(
              flex: 3,
              child: Container(),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
          ],
        ),
      ),
     ),
    );
   }

   Padding get _footerSectionWidget =>
       Padding(
   ListView _middleSectionWidget(double emptyWidth) {
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
              width: emptyWidth,
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
                  width: 50,
                  height: 50,
                  //child: Image.asset("assets/images/slowlyapp.png")
                ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                 "Recent Received",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
               ),
              ),
            ],
          ),
        );

      List<BottomNavigationBarItem> items = [
        BottomNavigationBarItem(
            icon: Image.asset(
            "assets/images/",
            width: 30,
            ),
            title: Text("")),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              size: 30,
              color: Colors.black38,
            ),
            title: Text("")),
        BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 30, color: Colors.black38),
            title: Text("")),
        BottomNavigationBarItem(
            icon: Icon(Icons.edit, size: 30, color: Colors.black38),
            title: Text("")),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, size: 30, color: Colors.black38),
            title: Text(""))
      ];
    }

