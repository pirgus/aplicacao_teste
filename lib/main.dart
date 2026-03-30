import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,     
          ),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Center(child: Text("Meu app Stateful!")),
        ),
        body: HomePage()
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<StatefulWidget> {
  String texto = "olá, mundo!";
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 12,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(texto),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).cardColor
            ),
            onPressed: () {
              setState(() {
                counter++;
                texto = "voce mudou o texto $counter vez(es)!";
              });
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("clique em mim!"),
              Icon(Icons.ads_click_outlined)
            ],
          ))
          ],
      ),
    );
  }
}
