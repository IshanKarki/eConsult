import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      theme: ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or simply save your changes to "hot reload" in a Flutter IDE).
//        // Notice that the counter didn't reset back to zero; the application
//        // is not restarted.
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
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text('eConsult'),
        backgroundColor: Colors.teal[600],
        elevation: 5,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
      ),
      drawer: Drawer(),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 0,
          vertical: 30.0,
        ),
        child: Container(
          height: 320.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: RaisedButton(
                      onPressed: () {},
                      textColor: Colors.black,
                      padding: const EdgeInsets.all(0.0),
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 180,
                        height: 110,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/doctoricon.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const Text(
                          'Doctor',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: RaisedButton(
                      onPressed: () {},
                      textColor: Colors.black,
                      padding: const EdgeInsets.all(0.0),
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 180,
                        height: 110,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/hospital.png'),
                          ),
                        ),
//                        padding: const EdgeInsets.all(40.0),
                        child: const Text(
                          'Hospital',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    onPressed: () {},
                    textColor: Colors.black,
                    padding: const EdgeInsets.all(0.0),
                    elevation: 6.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      width: 320,
                      height: 160,
//                      padding: EdgeInsets.all(40.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/covid19.png'),
                        ),
                      ),
                      child: Text(
                        'COVID-19',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
