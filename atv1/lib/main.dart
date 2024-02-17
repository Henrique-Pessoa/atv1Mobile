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
  final TextEditingController _age = TextEditingController();
  final TextEditingController _adress = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phone = TextEditingController();

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
                    const InputDecoration(labelText: "Idade"),
                style: const TextStyle(fontSize: 20),
                controller: _age,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Endereço"),
                style: const TextStyle(fontSize: 20),
                controller: _adress,
            )),
              Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Email"),
                style: const TextStyle(fontSize: 20),
                controller: _email,
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Telefone"),
                style: const TextStyle(fontSize: 20),
                controller: _phone,
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
