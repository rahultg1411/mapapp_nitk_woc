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
              Container(
                padding: EdgeInsets.all(1),
                alignment: Alignment.center,
                width: 350,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(58, 134, 9, 0.6509803921568628),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 5,
                    color: Color.fromRGBO(186, 12, 93, 1.0),
                    style: BorderStyle.solid,
                  ),
                ),
                child: const Text(
                  'Welcome to NITK!',
                  style: TextStyle(
                    color: Color.fromRGBO(10, 31, 155, 1.0),
                    fontSize: 40,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 290.0,
              ),
              Container(
                padding: EdgeInsets.all(1),
                alignment: Alignment.center,
                width: 250,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.6509803921568628),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 3,
                    color: Color.fromRGBO(11, 203, 221, 1.0),
                    style: BorderStyle.solid,
                  ),
                ),
                child: const Text(
                  'Explore NITK!',
                  style: TextStyle(
                    color: Colors.lightGreenAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
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
