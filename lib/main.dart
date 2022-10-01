import 'package:flutter/material.dart';
import 'recipe.dart';

void main() {
  runApp(const RecipesApp());
}

class RecipesApp extends StatelessWidget {
  const RecipesApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  List<Recipe> recipes = [
    Recipe('recipe number 1', 'image path number 1'),
    Recipe('recipe number 2', 'image path number 2'),
    Recipe('recipe number 3', 'image path number 3'),
    Recipe('recipe number 4', 'image path number 4'),
    Recipe('recipe number 5', 'image path number 5'),
    Recipe('recipe number 6', 'image path number 6'),
    Recipe('recipe number 7', 'image path number 7'),
    Recipe('recipe number 8', 'image path number 8'),
    Recipe('recipe number 9', 'image path number 9'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is the Recipes App"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return Text(recipes[index].label!);
        }),
        itemCount: recipes.length,
      ),
    );
  }
}
