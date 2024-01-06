import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Color Changing Bulbs'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColorChangingBulb(),
              ColorChangingBulb(),
              ColorChangingBulb(),
              ColorChangingBulb(),
              ColorChangingBulb(),
            ],
          ),
        ),
      ),
    );
  }
}

class ColorChangingBulb extends StatefulWidget {
  @override
  _ColorChangingBulbState createState() => _ColorChangingBulbState();
}

class _ColorChangingBulbState extends State<ColorChangingBulb> {
  bool isBlue = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isBlue = !isBlue;
        });
      },
      child: Icon(
        Icons.lightbulb,
        size: 20.0,
        color: isBlue ? Colors.blue : Colors.grey,
      ),
    );
  }
}
