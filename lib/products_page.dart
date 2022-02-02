import 'package:flutter/material.dart';

import 'nav_bar.dart';

class products extends StatelessWidget {
  const products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: (Colors.lightBlue[300]),
            title: Text('Products')),
        body: Container(



        ),
        drawer: NavDrawer(),
    );
  }
}