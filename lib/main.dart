import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    // ignore: unused_shown_name
    show Alignment, BuildContext, ButtonBar, CircleAvatar, Colors, ElevatedButton, FloatingActionButton, InkWell, Key, MaterialApp, PageController, Positioned, Scaffold, SingleTickerProviderStateMixin, Stack, State, StatefulWidget, StatelessWidget, TabBarView, TabController, TabPageSelector, Text, TextStyle, Widget, runApp;

import 'authentication/pages/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // remove the debug banner
        debugShowCheckedModeBanner: false,
        home: PageViewDemo());
  }
}

// Construct Dots Indicator

