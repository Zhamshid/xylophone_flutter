import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Hello',
          style: TextStyle(
            letterSpacing: 3,
            fontSize: 25,
          ),
        ),
      ),
      body: HomePage(),
    )
  ));
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
    );
  }
}


