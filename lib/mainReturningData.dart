import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Returning Data',
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Returning Data'),
      ),
      body: Center(child: SelectionButton()),
    );
  }
}

class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: Text('Selecciona una opción!'),
    );
  }

  // Un método que inicia SelectionScreen y espera por el resultado de
  // Navigator.pop!
  _navigateAndDisplaySelection(BuildContext context) async {
    // Navigator.push devuelve un Future que se completará después de que llamemos
    // Navigator.pop en la pantalla de selección!
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectionScreen()),
    );

    // Después de que la pantalla de selección devuelva un resultado,
    // oculta cualquier snackbar previo y muestra el nuevo resultado.
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Has elegido: $result"),
      duration: const Duration(milliseconds: 1500),
      width: 280.0, // Width of the SnackBar.
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
        top: 10,
        bottom: 10,
        //horizontal: 20.0, // Inner padding for SnackBar content.
      ),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ));
    /* Scaffold.of(context)
        .removeCurrentSnackBar()
        .showSnackBar(SnackBar(content: Text("$result"))); */
  }
}

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick an option'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  // Cierra la pantalla y regresa "Yep!" como el resultado
                  Navigator.pop(context, 'Flutter!');
                },
                child: Text('Flutter!'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  // Cierra la pantalla y regresa "Nope!" como el resultado
                  Navigator.pop(context, 'React Native.');
                },
                child: Text('React Native.'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
