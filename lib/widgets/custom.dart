import 'package:flutter/material.dart';
class Formulario extends StatelessWidget{
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  Formulario({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // initialValue: 'Nombre',
      // autofocus: true, //colocar el foco en el campo
      textCapitalization:
      TextCapitalization.words, //coloca el teclado en mayuscula
      onChanged: (value) {
        // print('El valor es : $value');
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null) {
          return 'El campo es obligatorio';
        }
        return value.length < 3
            ? 'El nombre debe tener al menos 3 caracteres'
            : null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        icon: icon == null ? null : Icon(icon),
        prefixIcon: icon == null ? null : Icon(prefixIcon),
        suffixIcon: icon == null ? null : Icon(suffixIcon),
      ),
      keyboardType: keyboardType,
      obscureText: obscureText,
    );
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
                  'si jala xd'),
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
}
