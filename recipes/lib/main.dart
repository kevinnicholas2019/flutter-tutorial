// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:recipes/recipe.dart';
import 'package:recipes/recipe_detail.dart';

Map<int, Color> colorWhite = {
  50: const Color.fromRGBO(255, 255, 255, .1),
  100: const Color.fromRGBO(255, 255, 255, .2),
  200: const Color.fromRGBO(255, 255, 255, .3),
  300: const Color.fromRGBO(255, 255, 255, .4),
  400: const Color.fromRGBO(255, 255, 255, .5),
  500: const Color.fromRGBO(255, 255, 255, .6),
  600: const Color.fromRGBO(255, 255, 255, .7),
  700: const Color.fromRGBO(255, 255, 255, .8),
  800: const Color.fromRGBO(255, 255, 255, .9),
  900: const Color.fromRGBO(255, 255, 255, 1),
};

extension ColorWhiteExtension on Colors {
  static MaterialColor get whiteMaterial =>
      MaterialColor(0xFFFFFFFF, colorWhite);
}

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //turunan untuk buat widget.
    return MaterialApp(
      //ini untuk menggunakan material design (wajib)
      title:
          'Recipe Calculator', //ui tidak tampilin ini, cuman aplikasi yang diinstal namanya jadi sepert ini
      theme: ThemeData(
        //theme untuk menentukan primary color dan accent color
        primarySwatch: ColorWhiteExtension.whiteMaterial,
        accentColor: Colors.black,
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget buildRecipeCard(Recipe recipe) => Card(
        color: Colors.amber,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        elevation: 2.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Image(image: AssetImage(recipe.imageUrl)),
              const SizedBox(
                height: 14.0,
              ),
              Text(recipe.label,
                  style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Palatino')),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold menyediakan high-level struktur untuk app
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        //ini untuk menjaga area yang safe pada setiap devices (penting)
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RecipeDetail(
                      recipe: Recipe.samples[index],
                    );
                  },
                ),
              );
            },
            child: buildRecipeCard(Recipe.samples[index]),
          ),
        ), //yah container...
      ),
    );
  }
}
