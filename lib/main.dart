import 'package:flutter/material.dart';

// Método principal
main() {
  runApp(AppWidget(title: 'Alan'));
}

// Estado Statelless, estado global, imutável sem alteração
class AppWidget extends StatelessWidget {
  // Criando uma variavel string
  final String title;

  //Passando p construtor
  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

// Estado StateFull Widget, criadora
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

// Estado que vai fazer a mudança da HomePage
class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: GestureDetector(
                child: Text('Contador: $counter'),
                onTap: () {
                  setState(() {
                    counter++;
                  });
                })));
  }
}
