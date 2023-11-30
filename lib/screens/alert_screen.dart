import 'package:flutter/material.dart';


class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              displayDialogAndroid(context);
            },
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Mostrar Alerta',
                style: TextStyle(fontSize: 30),
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.close),
      ),
    );
  }
}

void displayDialogAndroid(BuildContext context) {
  showDialog(
    barrierDismissible: false, //Forzar a que se cierre en la opcion de cerrar
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text(
          'Flutter',
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.amber,
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
                'Flutter es un SDK de codigo abierto desarrollado por google para crear apps multiplataforma.'),
            SizedBox(
              height: 20,
            ),
            FlutterLogo(
              size: 100,
            ),
          ],
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Cerrar',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ))
        ],
      );
    },
  );
}

