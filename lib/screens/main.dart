import 'package:flutter/material.dart';
import 'package:planet_homework/widgets/main_screen_landscape.dart';
import 'package:planet_homework/widgets/main_screen_portrait.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);


  static const String _title = "Planet App";

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation; //getting orientation status
    return Scaffold(
      appBar: AppBar(title: const Text("Planet App")),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          //If device orientation is landscape goes MainScreenLandscape otherwise MainScreenPortrait you can see both files in widgets package
          if (orientation == Orientation.landscape) {
            return MainScreenLandscape();
          } else {
            return MainScreenPortrait();
          }
        },
      ),
    );
  }

}
