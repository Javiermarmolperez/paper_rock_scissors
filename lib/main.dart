import 'package:flutter/material.dart';
import 'package:piedra_papel_tijeras/Game.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Piedra Papel Tijeras'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var buttonPaper = ElevatedButton(
    child: new Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Image.asset('assets/paper.png',
            height: 40.0, width: 40.0),
        Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: new Text(
              "PAPER",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ))
      ],
    ),
    onPressed: () {
      choose("paper");
    },
  );

  var buttonRock = ElevatedButton(
    child: new Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Image.asset('assets/rock.png',
            height: 40.0, width: 40.0),
        Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: new Text(
              "ROCK",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ))
      ],
    ),
    onPressed: () {
      choose("rock");
    },
  );

  var buttonScissors = ElevatedButton(
    child: new Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Image.asset('assets/scissors.png',
            height: 40.0, width: 40.0),
        Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: new Text(
              "SCISSORS",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ))
      ],
    ),
    onPressed: () => {
      choose("scissors")
    },

  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
            children: [
              buttonPaper,
              buttonRock,
              buttonScissors
            ]
        ),
      )
        );
  }
}

void choose(aString) {
  var game = Game();
  var result = game.chooseElection(aString);
  print(result);
}


