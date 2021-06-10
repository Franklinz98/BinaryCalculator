import 'package:demo_app/provider/convertion_model.dart';
import 'package:demo_app/screens/myhome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => ConvertionModel(),
        child: App(),
      ),
    );
