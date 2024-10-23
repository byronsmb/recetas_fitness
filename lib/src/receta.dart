import 'package:flutter/material.dart';
//import 'package:flutter_icons/flutter_icons.dart';
import 'package:recetas_fitness/src/model/receta_model.dart';
import 'package:recetas_fitness/src/screens/detalles_receta.dart';

class NuevaReceta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: RecetaModel.listaRecetas.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetallesReceta(
                            recipeModel: RecetaModel
                                .listaRecetas[index], //RECETA SELECCIONADA
                          ),
                        )),
                    child: RecipeCard(
                      recetaModel: RecetaModel.listaRecetas[
                          index], //ESTA LA LISTA DE TODAS LAS REETAS
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class RecipeCard extends StatefulWidget {
  final RecetaModel recetaModel;
  RecipeCard({
    required this.recetaModel,
  });

  @override
  _RecipeCardState createState() => _RecipeCardState();
}

class _RecipeCardState extends State<RecipeCard> {
  bool loved = false;
  bool saved = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Hero(
                  tag: widget.recetaModel.imgPath,
                  child: Image(
                    height: 320,
                    width: 320,
                    fit: BoxFit.cover,
                    image: AssetImage(widget.recetaModel.imgPath),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 40,
              child: InkWell(
                onTap: () {
                  setState(() {
                    saved = !saved;
                  });
                },
                child: Icon(
                  saved ? Icons.bookmark : Icons.bookmark_border,
                  color: Color.fromARGB(255, 74, 228, 36),
                  size: 38,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.recetaModel.title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      widget.recetaModel.writer,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              // Spacer(),
              Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.timer,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      widget.recetaModel.cookingTime.toString() + '\'',
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        setState(() {
                          loved = !loved;
                        });
                      },
                      child: Icon(
                        Icons.favorite,
                        color: loved ? Colors.red : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
