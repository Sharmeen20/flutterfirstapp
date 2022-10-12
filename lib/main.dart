import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: "Network Image",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      
      body: Center(
          child: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            border: Border.all(
              color: Colors.black,
              width: 5,
            ),
          ),
          child: Image.network(
              'https://miro.medium.com/max/828/1*nylReBLb1kY5fvg4QIgzKQ.png'),
        ),
        Text(
          'Welcome to Flutter Tutorial on Network Image',
          style:
              TextStyle(fontSize: 25, color: Colors.black, fontFamily: "Arial"),
        ),
      ])),
    );
    // )
  }
}
