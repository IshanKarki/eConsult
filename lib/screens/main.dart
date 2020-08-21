import 'package:flutter/material.dart';
import 'package:econsult_new_project/screens/HomePage.dart';
import 'package:econsult_new_project/screens/ProfilePage.dart';
import 'package:econsult_new_project/screens/ChatPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project',
//      theme: ThemeData(
//        // This is the theme of your application.
//        primarySwatch: Colors.blue,
//        // This makes the visual density adapt to the platform that you run
//        // the app on. For desktop platforms, the controls will be smaller and
//        // closer together (more dense) than on mobile platforms.
//        visualDensity: VisualDensity.adaptivePlatformDensity,
//      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyMainPageState createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List _children =
  [
    HomePage(),
    ChatPage(),
    ProfilePage(),

  ];
  // final tabs place

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
            backgroundColor: Colors.teal[600],
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Chats'),
            backgroundColor: Colors.teal[600],
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text('Profile'),
            backgroundColor: Colors.teal[600],
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
