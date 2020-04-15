import 'package:demo_app/widgets/converter.dart';
import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Color(0xffffccaa),
           accentColor: Color(0xffff5448),
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Programación Móvil 2020'),
            ),
            body: Center(child: Converter())));
  }
}
