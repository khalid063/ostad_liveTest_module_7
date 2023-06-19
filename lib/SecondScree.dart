import 'package:flutter/material.dart';

class SecondScree extends StatefulWidget {
  const SecondScree({Key? key}) : super(key: key);

  @override
  State<SecondScree> createState() => _SecondScreeState();
}

class _SecondScreeState extends State<SecondScree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Text("Congratulations! You reached 10!"),
      ),
    );
  }
}
