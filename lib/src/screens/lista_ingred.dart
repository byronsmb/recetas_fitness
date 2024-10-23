import 'package:flutter/material.dart';

class ListaIngred extends StatefulWidget {
  @override
  State<ListaIngred> createState() => _ListaIngredState();
}

class _ListaIngredState extends State<ListaIngred> {
  //const ListaIngred({super.key});
  List<String> _ListadoAlimento = [
    "Lechuga",
    "Zanahoria",
    "Remolacha",
    "Haba",
    "Aguacate",
    "Brocoli",
    "Coliflor",
    "Col",
    "Tomate",
    "Tomate arbol",
    "Melloco",
    "Espinaca",
    "Limon",
    "Zapallo",
    "Papaya",
    "Vainas",
    "Rabano",
    "Piña",
    "Pepino",
    "Apio",
    "Manzana",
  ];

  late List<bool> _isChecked;

  @override
  Widget build(BuildContext context) {
    
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        color: Colors.green,
      ),
      itemCount: _ListadoAlimento.length,
      itemBuilder: (context, index) {
        return CheckboxListTile(
          title: Text(_ListadoAlimento[index]),
          value: _isChecked[index],
          onChanged: (val) {
            setState(
              () {
                _isChecked[index] = val!;
              },
            );
          },
        );
      },
    );


  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isChecked = List<bool>.filled(_ListadoAlimento.length, false);
  }
}