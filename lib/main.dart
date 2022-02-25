// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/material.dart';

import 'Screens/darkscreen.dart';
import 'Screens/lightScreen.dart';


 final myInputController = TextEditingController();
  final myOutputController = TextEditingController();


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage( ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //final String title;

  const MyHomePage({
    Key? key,
   // required this.title,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
 
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Color(0xff24495E),
      body: SafeArea(
        child: LightScreen(),
      ), 
    );
  } 
}



class WhiteButton extends StatelessWidget {
  final String text;
  final Color color;
  const WhiteButton({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
        elevation: 5.0,
         color: color,
      onPressed: () { 
      },
      child: Text(text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),),
    );
  }
}
