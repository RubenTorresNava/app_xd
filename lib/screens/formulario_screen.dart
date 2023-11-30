import 'package:flutter/material.dart';
import 'package:untitled/widgets/custom.dart';

import 'alert_screen.dart';

class FormularioScreen extends StatelessWidget {
  const FormularioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario'),
      ),
        //Me siento mal y no estoy poniendo atencion. Ayuda.
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            TextFormField(
              initialValue: '', //valor inicial en el campo de texto
              //autofocus: true, //colocar el foco en caja de texto
              textCapitalization: TextCapitalization.words, //el teclado lo coloque en mayusculas
              onChanged: (value){
                //print("el valor es: $value");
              },
              //verifiva que valide el contenido de la caja de texto
              autovalidateMode: AutovalidateMode.onUserInteraction, //activar  las validaciones
              //ni J lo que dijo el profe xd
              validator: (value){
                if(value==null){
                  return 'este valor es requerrido';
                }
                return value.length<3?'se requiere al menos tres caracteres':null;
              },
              decoration: const InputDecoration(
                hintText: 'escribe el nombre completo', //es como un placeholder
                labelText: 'nombre completo', //etiqyeta de la caja de texto
                helperText: 'solo letras', //ayuda de la caja de texto
                icon: Icon(Icons.group_add_outlined),
                prefixIcon: Icon(Icons.group),
                suffixIcon: Icon(Icons.group_add)
              ),
            ),
            Formulario(
              hintText: 'escriba su nombre',
              labelText: 'nombre',
              helperText: 'solo letras',
              icon: Icons.group_add,
              keyboardType: TextInputType.text,
              obscureText: false,
            ),
            SizedBox(height: 28,),
            Formulario(
              hintText: 'escriba su correo',
              labelText: 'nombre',
              helperText: 'solo letras',
              icon: Icons.group_add,
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
            ),
            SizedBox(height: 28,),
            Formulario(
              hintText: 'escriba su contraseña',
              labelText: 'nombre',
              helperText: 'solo letras',
              icon: Icons.password,
              keyboardType: TextInputType.text,
              obscureText: true,
            ),
            SizedBox(height: 28,),
            ElevatedButton(
               onPressed:(){
            displayDialogAndroid(context);
            },
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('guardar'),),
                )
            )
          ],
        ),
      )
    );
  }
}
