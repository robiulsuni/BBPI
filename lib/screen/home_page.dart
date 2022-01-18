import 'package:bbpi/global_widget/my_drware.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('BBPI'),
        backgroundColor: Colors.greenAccent.shade400,
      ),
    );
  }
}
