import 'package:flutter/material.dart';

class FilterPage extends StatelessWidget {
  static const routeName = '/filter';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
      ),
      body: Center(
        child: Text("Center Page"),
      ),
    );
  }
}
