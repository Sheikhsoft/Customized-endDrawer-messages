import 'package:flutter/material.dart';
import './custom_icons/custom_icon.dart';

//import './models/user_root.dart';
import './widgets/drawer.dart';
// import './messages_friends_data.dart';

// import './models/message_friend.dart';

// import './widgets/message_tile.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // @override
  // void initState() {
  //   super.initState();
  // }

  //**------------------------------- */
  @override
  Widget build(BuildContext context) {
    //--------------------------------------
    return Scaffold(
      backgroundColor: Color(0xFF170f1e),

      appBar: AppBar(
        title: (Text('May App')),
        backgroundColor: Colors.black,
        /* //--- REMOVE Humburger Button from AppBar ----//
                    leading: new Container(), */
        actions: <Widget>[
          Builder(
            builder: (context) => IconButton(
                  icon: Icon(
                    CustomIcons.user,
                    size: 32.0,
                  ),
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
          ),
        ],
        automaticallyImplyLeading: false,
        leading: Icon(CustomIcons.menu),
      ),

      body: Container(
        child: Center(
          child: Text(
            'Your content goes here',
            style: TextStyle(
                fontFamily: 'Raleway', fontSize: 24, color: Colors.white),
          ),
        ),
      ),
      drawer: Container(),
      ////////////////////////////
      endDrawer: Theme(
        //---------- Drawer transparent ---//
        data: Theme.of(context).copyWith(
          canvasColor: Colors.transparent,
        ),
        child: Drawer(
          child: MyDrawer(),
        ),
      ),
    );
  }
}
