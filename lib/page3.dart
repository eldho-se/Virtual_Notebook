import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:notebook/auth/start.dart';
import 'package:notebook/page1.dart';
import 'package:notebook/page2.dart';
import 'package:notebook/page0.dart';
import 'package:notebook/canvas.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> _signOut() async {
  await FirebaseAuth.instance.signOut();
}

Color mycolor = Color(0xfff373F51);

class Settings1 extends StatefulWidget {
  @override
  _Settings1State createState() => _Settings1State();
}

class _Settings1State extends State<Settings1> {
  var currentIndex;

  @override
  void initState() {
    //  implement initState
    super.initState();
    currentIndex = 3;
  }

  changePage(int index) {
    setState(() {
      currentIndex = index;
      print(index);
      if (index == 0) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyHomePage()));
      } else if (index == 1) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Recent()));
      } else if (index == 2) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Files()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  //color: Colors.green[100],
                  ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/images.jpg"),
                      radius: 60,
                      
                    )
                  ],
                ),
              ),
            ),

          

            ListTile(
              title: Text(
                "Notification",
                style: TextStyle(fontSize: 16,),
              ),
              trailing: Icon(Icons.keyboard_arrow_right,
                  color: Colors.black, size: 30.0),
              dense: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => null),
                );
              },
            ),
            //tile2
            ListTile(
              title: Text(
                "Themes",
                style: TextStyle(fontSize: 16),
              ),
              trailing: Icon(Icons.keyboard_arrow_right,
                  color: Colors.black, size: 30.0),
              dense: true,
            ),

            ListTile(
              title: Text(
                "Profile",
                style: TextStyle(fontSize: 16),
              ),
              trailing: Icon(Icons.keyboard_arrow_right,
                  color: Colors.black, size: 30.0),
              dense: true,
            ),
            //tile3
            ListTile(
              title: Text(
                "LOGOUT",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.keyboard_arrow_right,
                  color: Colors.black, size: 30.0),
              dense: true,
              onTap: () {
                _signOut();
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        backgroundColor: mycolor,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Canvas()));
        },
        child: Icon(Icons.add),
        backgroundColor: mycolor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BubbleBottomBar(
        opacity: .2,

        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 8,
        fabLocation: BubbleBottomBarFabLocation.end, //new
        hasNotch: true, //new
        hasInk: true, //new, gives a cute ink effect
        inkColor: Colors.black12, //optional, uses theme color if not specified
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.red,
              icon: Icon(
                Icons.dashboard,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.dashboard,
                color: Colors.red,
              ),
              title: Text("Home")),
          BubbleBottomBarItem(
              backgroundColor: Colors.deepPurple,
              icon: Icon(
                Icons.access_time,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.access_time,
                color: Colors.deepPurple,
              ),
              title: Text("Recent")),
          BubbleBottomBarItem(
              backgroundColor: Colors.indigo,
              icon: Icon(
                Icons.folder_open,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.folder_open,
                color: Colors.indigo,
              ),
              title: Text("Folders")),
          BubbleBottomBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.menu,
                color: Colors.green,
              ),
              title: Text("Menu"))
        ],
      ),
    );
  }
}
