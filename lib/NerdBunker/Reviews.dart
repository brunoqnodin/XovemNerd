import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Reviews extends StatefulWidget {
  @override
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  List lista;
  Future<String> fetchData()async{
    http.Response response = await http.get("http://portal.mallory.com.br/webservice.php");
    setState(() {
      lista = json.decode(response.body);
    });
  }
  @override
  void initState(){
    fetchData();
  }
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ListView.builder(
        itemCount: lista == null ? 0: lista.length,
        itemBuilder: (context, index){
          return Card(
            color: Colors.black87,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: <Widget>[
                      Image.network(lista[index]["imagem"], height: 60),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 10, left: 20, right: 5),
                                    child: Text(
                                      lista[index]["tipo"],
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xfff59b37)
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      lista[index]["quando"],
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                lista[index]["titulo"],
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
