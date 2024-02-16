import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:  
      SingleChildScrollView(child:Column(children: [
        Padding(padding: const EdgeInsets.all(20),child:Column(
          children: [
            Image.network("https://lh3.googleusercontent.com/proxy/dsXHzsaseQkdJagfoQ68YuJVG7oQD6Ntn-TUJSG_MkmvrvayM_s6u7f9KYGRBM-9haalIlX3R-bPizYvVoZBsKNz5mDWh8abDOrevmGe7dWZBWGjNRJeaR0zkmjMXDTgosKc",width: 200,),
            const Text("Nome: Sebastian Vettel",style:TextStyle(fontSize: 30),),
            const Text("Idade: 36 anos",style:TextStyle(fontSize: 20)),
            const Text("Campeonatos: 4 ",style:TextStyle(fontSize: 20)),
          ],
        )),
        Padding(padding: const EdgeInsets.all(20),child:Column(
          children: [
            Image.network("https://phantom-marca.unidadeditorial.es/94c9e05680f44150a851cb83c78e66fb/resize/828/f/jpg/assets/multimedia/imagenes/2022/12/29/16723061351394.jpg",width: 200,),
            const Text("Nome: michael schumacher",style:TextStyle(fontSize: 20),),
            const Text("Idade: 55  anos",style:TextStyle(fontSize: 20),),
            const Text("Campeonatos: 7 ",style:TextStyle(fontSize: 20),),
          ],
        )),
        Padding(padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://media.formula1.com/content/dam/fom-website/drivers/2023Drivers/hamilton.jpg.img.1536.high.jpg",width: 200,),
            const Text("Nome: Lewis Hamilton",style:TextStyle(fontSize: 30),),
            const Text("Idade: 39 anos",style:TextStyle(fontSize: 20),),
            const Text("Campeonatos: 7 ",style:TextStyle(fontSize: 20),),
          ],
          ),
        ),
        ])
    ));
  }
}