import 'package:flutter/material.dart';

Widget botao(String titulo){
  return Container(
    height: 40,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Color(0xfff59b37),
    ),
    child: FlatButton(
      onPressed: (){},
      child: Text(
        titulo,
        style: TextStyle(
            fontSize: 13,
            color: Colors.white
        ),
      ),
    ),
  );
}