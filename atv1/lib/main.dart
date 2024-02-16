import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _nota1 = TextEditingController();
  final TextEditingController _nota2 = TextEditingController();
  final TextEditingController _nota3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Digite seu nome"),
                style: const TextStyle(fontSize: 20),
                controller: _name,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Nota1: "),
                style: const TextStyle(fontSize: 20),
                controller: _nota1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Nota2: "),
                style: const TextStyle(fontSize: 20),
                controller: _nota2,
            )),
              Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Nota3: "),
                style: const TextStyle(fontSize: 20),
                controller: _nota3,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    print(_name.text);
                    print(_age.text);
                    print(_adress.text);
                    print(_email.text);
                    print(_phone.text);
                  });
                },
                child: const Text("Enviar")),
          ],
        ),
      ),
    );
  }
}