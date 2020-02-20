import 'package:flutter/material.dart';
import 'package:jovem_nerd/Botao_Home.dart';
import 'package:jovem_nerd/NerdBunker/Especiais.dart';
import 'package:jovem_nerd/NerdBunker/Noticias.dart';
import 'package:jovem_nerd/NerdBunker/Reviews.dart';
import 'package:jovem_nerd/NerdBunker/Todos.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "Nerd",
                ),
                TextSpan(
                  text: "Bunker",
                  style: TextStyle(
                    color: Color(0xfff59b37),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Color(0xfff59b37),
            tabs: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "TODOS",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "NOTÍCIAS",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "REVIEW",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "ESPECIAIS",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.black87,
          child: Column(
            children: <Widget>[
              Text(
                "Texto",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30
                ),
              ),
              SizedBox(
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    botao("AGENDA NERD"),
                    botao("ANIMES E MANGÁS"),
                    botao("CIÊNCIA E TECNOLOGIA"),
                    botao("CRÍTICAS"),
                    botao("DICAS DA REDAÇÃO"),
                    botao("ENTREVISTAS"),
                    botao("ESPORTS"),
                    botao("ETC"),
                    botao("EXPLICANDO"),
                    botao("FILMES"),
                    botao("GAMES"),
                    botao("HQS E LIVROS"),
                    botao("REVIEWS"),
                    botao("SÉRIES E TV"),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Todos(),
                    Noticias(),
                    Reviews(),
                    Especiais()
                  ],
                ),
              ),
            ],
          ),
        ),
        drawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.black87),
          child: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    image: DecorationImage(
                        image: AssetImage("images/menu.jpg"),
                        fit: BoxFit.cover
                    ),
                  ),

                  child: Text(
                    "",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  alignment: Alignment.centerLeft,
                  child: FlatButton.icon(
                    textColor: Colors.white,
                    onPressed: (){},
                    icon: Icon(Icons.flash_on),
                    label: Text("      NerdBunker"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  alignment: Alignment.centerLeft,
                  child: FlatButton.icon(
                    textColor: Colors.white,
                    onPressed: (){},
                    icon: Icon(Icons.play_arrow),
                    label: Text("      Videos"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  alignment: Alignment.centerLeft,
                  child: FlatButton.icon(
                    textColor: Colors.white,
                    onPressed: (){},
                    icon: Icon(Icons.mic),
                    label: Text("      NerdCast"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  alignment: Alignment.centerLeft,
                  child: FlatButton.icon(
                    textColor: Colors.white,
                    onPressed: (){},
                    icon: Icon(Icons.shopping_cart),
                    label: Text("      Nerdstore"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  alignment: Alignment.centerLeft,
                  child: FlatButton.icon(
                    textColor: Colors.white,
                    onPressed: (){},
                    icon: Icon(Icons.settings),
                    label: Text("      Ajustes"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}