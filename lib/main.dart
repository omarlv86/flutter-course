import 'package:flutter/material.dart';

void main() {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo 1',
      home: const Inicio(title: 'Flutter Inicio'),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key, required this.title});

  final String title;

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Inicio"),
        ),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Image.network(
                  "https://uploads-ssl.webflow.com/5f841209f4e71b2d70034471/60bb4a2e143f632da3e56aea_Flutter%20app%20development%20(2).png"),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Image.network(
                  "https://cdn.sanity.io/images/ay6gmb6r/production/52566e987046623a25e2f40a11fa99bbd9f4d4d2-2240x1260.png"),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Image.network(
                  "https://baturamobile.com/wp-content/uploads/2022/06/flutter-vs-react-native.jpeg"),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Image.network(
                  "https://1.bp.blogspot.com/-ak_aEW48mmA/XNCDH1UYfaI/AAAAAAAAHeg/NUhgwcoZX2Ei7exfQreLRSmOfPtxdCReQCLcBGAs/s1600/image2.png"),
            ),
          ],
        ));
  }
}



/* class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  //@override
  //State<MyHomePage> createState() => _MyHomePageState();
} */




