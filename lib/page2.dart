import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:notebook/page3.dart';
import 'package:notebook/page1.dart';
import 'package:notebook/page2.dart';
import 'package:notebook/page0.dart';
import 'package:notebook/canvas.dart';
import 'package:notebook/storage/upload_page.dart';

Color mycolor = Color(0xfff373F51);

class Files extends StatefulWidget {
  @override
  _FilesState createState() => _FilesState();
}

class _FilesState extends State<Files> {
  List subList = ['MPMC', 'GTC', 'SC', 'SS', 'DCM', 'TOC'];
  var currentIndex;

  @override
  void initState() {
    //  implement initState
    super.initState();
    currentIndex = 2;
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
      } else if (index == 3) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Settings1()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.6;
    final double itemWidth = size.width / 1.8;
    return Scaffold(
      appBar: AppBar(
        title: Text("Files and Scan"),
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
      body: ListView.builder(
        itemCount: subList.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: GestureDetector(
                onTap: () {
                  String passData = subList[index];
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FirstPage(),
                          settings: RouteSettings(
                            arguments: passData,
                          )));
                },
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: mycolor,
                          // image: DecorationImage(
                          //   image: AssetImage(''),
                          //   fit: BoxFit.cover,
                          // ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 160,
                        child: Card(
                          margin: EdgeInsets.all(18),
                          elevation: 7.0,
                          child: Center(
                            child: Text(
                              subList[index],
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.2),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ));
        },
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
