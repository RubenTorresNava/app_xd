import 'package:flutter/material.dart';

class OtroScreen extends StatelessWidget {
  const OtroScreen({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Datos Personales'),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 5),
              child: CircleAvatar(
                backgroundColor: Colors.orange[900],
                child: const Text("apps"),
              ),
            )
          ],
        ),
        body: const Center(
          child: Column(
            children: [
              SizedBox(height: 200,),
              CircleAvatar(
                maxRadius: 100,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/users.png"),
              ),
              SizedBox(height: 10,),
              Text("desarrollo de aplicaciones multiplataforma"),
            ],
          ),
        ),
      );
  }
}
