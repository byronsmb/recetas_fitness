import 'package:flutter/material.dart';

import 'package:recetas_fitness/src/receta.dart';
import 'package:recetas_fitness/src/screens/lista_ingred.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {
          setState(() {
            //i++;
          });
        },
      ),

      body: SafeArea(
        bottom: false,
        child: DefaultTabController(
          length: 4,
          initialIndex: 0,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              TabBar(
                isScrollable: true,
                indicatorColor: Colors.red,
                tabs: [
                  Tab(
                    text: "Recetas".toUpperCase(),
                  ),
                  Tab(
                    text: "Favoritos".toUpperCase(),
                  ),
                  Tab(
                    text: "Categorias".toUpperCase(),
                  ),
                  Tab(
                    text: "Lista".toUpperCase(),
                  ),
                ],
                labelColor: Colors.black,
                indicator: DotIndicator(
                  color: Colors.black,
                  distanceFromCenter: 16,
                  radius: 3,
                  paintingStyle: PaintingStyle.fill,
                ),
                unselectedLabelColor: Colors.black.withOpacity(0.3),
                labelStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
                labelPadding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    NuevaReceta(), //pagina 1
                    Container(
                      child: Center(
                        child: Text(
                          'Seccion de Favoritos PROXIMAMENTE...',
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          'Seccion categoria PROXIMAMENTE...',
                        ),
                      ),
                    ),
                    ListaIngred(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
