import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mapapp_nitk_woc/screens/mapscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NITK Map'),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Welcome to NITK',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 50,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.black45,
                ),
              ),
              const SizedBox(
                width: 200.0,
                height: 300.0,
              ),
              const Text(
                'Explore NITK',
                style: TextStyle(
                  color: Colors.lightGreenAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.black87,
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 25.0,
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => MapScreen())),
        tooltip: 'Map',
        child: const Icon(Icons.pin_drop_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
