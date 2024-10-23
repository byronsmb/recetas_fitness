import 'package:flutter/material.dart';

class RecetaModel {
  String title, writer, description;
  int cookingTime;
  int servings;
  List<String> ingredients = [];
  String imgPath;
  RecetaModel({
    required this.title,
    required this.writer,
    required this.description,
    required this.cookingTime,
    required this.servings,
    required this.imgPath,
    required this.ingredients,
  });

  static List<RecetaModel> listaRecetas = [
    RecetaModel(
      title: 'Tortilla de Huevo',
      writer: "Imran Sefat",
      description:
          'A touch',
      cookingTime: 10,
      servings: 4,
      imgPath: 'assets/images/tortillaHuevo.jpg',
      ingredients: [
        '1 Huevo',
        '1/2 de taza de Avena',
        '1 Puñado de espinaca',
        '1 Zanahoria Rallada',
      ],
    ),
    RecetaModel(
      title: 'Tostada Integral',
      writer: "Imran Sefat",
      description:
          'Sneak',
      cookingTime: 10,
      servings: 4,
      imgPath: 'assets/images/tostada.png',
      ingredients: [
        '4 tostadas integrales',
        '2 onzas de queso',
        'Acompañante - Aguacate o Tomate Cherry',
      ],
    ),
    RecetaModel(
      title: 'Ensalada de pechuga en trozos',
      writer: "Imran Sefat",
      description:
          'A hearty',
      cookingTime: 10,
      servings: 4,
      imgPath: 'assets/images/ensaladadepechuga.png',
      ingredients: [
        'Pechuga en trozos',
        '1 huevo duro',
        'Lechuga',
        'Tomate cherry',
      ],
    ),
    RecetaModel(
      title: 'Ensalada de Garbanzo',
      writer: "Gordon Ramsey",
      description:
          'Just wait.',
      cookingTime: 10,
      servings: 2,
      imgPath: 'assets/images/ensaladaGarbanzo.png',
      ingredients: [
        '1/2 de Garbanzos tostados',
        'Atún',
        'Tomate cherry',
        '1 Huevo duro',
        'Lechuga',
        'Aguacate',
      ],
    ),
    RecetaModel(
      title: 'Carne y Brocoli',
      writer: "Gordon Ramsey",
      description:
          'Just wait.',
      cookingTime: 10,
      servings: 2,
      imgPath: 'assets/images/carneybrocoli.png',
      ingredients: [
        'Carne de res en trozos cocida',
        'Zanahoria en trozos',
        'Brocoli cocido',
      ],
    ),

    RecetaModel(
      title: 'Pescado con Ensalada',
      writer: "Gordon Ramsey",
      description:
          'Just wait.',
      cookingTime: 10,
      servings: 2,
      imgPath: 'assets/images/pescado.jpg',
      ingredients: [
        'Pescado trucha',
        'Maiz',
        'Lechuga',
        'Col',
        'Vainas',
      ],
    ),
    RecetaModel(
      title: 'Ensalada de Melloco',
      writer: "Gordon Ramsey",
      description:
          'Just wait.',
      cookingTime: 10,
      servings: 2,
      imgPath: 'assets/images/melloco.jpg',
      ingredients: [
        'Melloco cocido',
        'Zanahoria',
        'Remolacha',
        'Col',
      ],
    ),
    RecetaModel(
      title: 'Ensalada de col y Maiz',
      writer: "Gordon Ramsey",
      description:
          'Just wait.',
      cookingTime: 10,
      servings: 2,
      imgPath: 'assets/images/colymaiz.png',
      ingredients: [
        'Col picada',
        'Maiz',
        'Tomate',
        'Lechuga',
        'Pepino',
      ],
    ),
    RecetaModel(
      title: 'Arroz integral y lentejas',
      writer: "Gordon Ramsey",
      description:
          'Just wait.',
      cookingTime: 10,
      servings: 2,
      imgPath: 'assets/images/lenteja.png',
      ingredients: [
        'Arroz integral',
        'Lenteja cocida',
        'Pollo o Atún',
        'Aguacate',

      ],
    ),
    RecetaModel(
      title: 'Tortilla integral y Huevos',
      writer: "Gordon Ramsey",
      description:
          'Just wait.',
      cookingTime: 10,
      servings: 2,
      imgPath: 'assets/images/1A.jpg',
      ingredients: [
        'Tortilla integral',
        '1 Huevo entero',
        '1/2 aguacate',
        '1/2 plátano cocido',

      ],
    ),
    RecetaModel(
      title: 'Galleta de arroz',
      writer: "Gordon Ramsey",
      description:
          'Just wait.',
      cookingTime: 10,
      servings: 2,
      imgPath: 'assets/images/2A.jpg',
      ingredients: [
        '3 Galletas de arroz',
        '1 Guineo maduro',
        'Miel'
      ],
    ),


    RecetaModel(
      title: 'Tostada con Huevos enteros',
      writer: "Gordon Ramsey",
      description:
          'Just wait.',
      cookingTime: 10,
      servings: 2,
      imgPath: 'assets/images/3A.jpg',
      ingredients: [
        'Pan integral',
        'Aguacate',
        'Tomate cherry',
        '1 Huevo entero',
        'Berro o Lechuga',
      ],
    ),
    RecetaModel(
      title: 'Pancake de avena y platano',
      writer: "Gordon Ramsey",
      description:
          'Just wait.',
      cookingTime: 10,
      servings: 2,
      imgPath: 'assets/images/4A.png',
      ingredients: [
        'Avena',
        'Huevo',
        'Leche de almendra (o agua)',
        'Guineo maduro',
      ],
    ),
    RecetaModel(
      title: 'Pancake de avena',
      writer: "Gordon Ramsey",
      description:
          'Just wait.',
      cookingTime: 10,
      servings: 2,
      imgPath: 'assets/images/5A.png',
      ingredients: [
        'Avena',
        'Leche almendra o agua',
        'Sal',
        'Aguacate',
        '1 Huevo duro',
      ],
    ),
    RecetaModel(
      title: 'Platano y Atún',
      writer: "Gordon Ramsey",
      description:
          'Just wait.',
      cookingTime: 10,
      servings: 2,
      imgPath: 'assets/images/6A.png',
      ingredients: [
        'Atún',
        'Cebolla',
        '1 Plátano maduro cocido',
        '1 Pepino',

      ],
    ),
    RecetaModel(
      title: 'Arroz de coliflor y Pollo',
      writer: "Gordon Ramsey",
      description:
          'Desmenuzar el pollo, sazonar y agregar zumo de limón. Saltear el pollo 5 minutos. Agregar aliño 4 minutos. Agregar espinaca y coliflor rallada. Agregar sal y pimienta necesarios. Por 5 minutos mas',
      cookingTime: 10,
      servings: 2,
      imgPath: 'assets/images/7A.jpg',
      ingredients: [
        'Pollo',
        'Espinacas',
        'Coliflor rallada o Brocoli',
        'Sal',

      ],
    ),
  ];
}
