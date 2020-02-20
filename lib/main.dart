import 'package:flutter/material.dart';
import 'package:jovem_nerd/Home.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Jovem Nerd",
    theme: ThemeData(
      canvasColor: Colors.black87
    ),
    home: Home(),
  ));
}