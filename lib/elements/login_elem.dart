// ignore_for_file: camel_case_types

import 'package:app2_1/elements/elem_simple.dart';
import 'package:app2_1/widgets/btn.dart';
import 'package:app2_1/widgets/txtf.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class boton1 extends StatefulWidget {
  const boton1({
    super.key,
  });

  @override
  State<boton1> createState() => _boton1State();
}

class _boton1State extends State<boton1> {
  @override
  Widget build(BuildContext context) {
    return Column( 
      
      children: [buton(
      label2: 'Iniciar Sesión',
      backgroundColor: Colors.blue,
      onPressed: () {

       if (userController.text.isEmpty || passwordController.text.isEmpty) {
         ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(
             backgroundColor: Colors.blueGrey,
             content: Text('Por favor, complete todos los campos'),
             duration: Duration(milliseconds: 1800),
           ),
         );
         return;
       }

       if(userController.text != "eduardo.vijil@unah.hn"){
           ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Color.fromARGB(255, 201, 54, 44),
              content: Text('Correo electrónico incorrecto'),
              duration: Duration(milliseconds: 1500),
            ),
          );
          return;
       }
       
       if(passwordController.text != "20232000669") {
            ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Color.fromARGB(255, 201, 54, 44),
              content: Text('Contraseña incorrecta'),
              duration: Duration(milliseconds: 1500),
            ),
          );
          return;
       }
       else{
          userController.clear();
          passwordController.clear();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.green,
              content: Text('Inicio de sesión exitoso'),
              duration: Duration(seconds: 2),
            ),
          );
          context.goNamed('home');
          
       }
      },    
    ),
    sized20(),
    buton(
      label2: 'Registro',
      backgroundColor: Colors.green,
      onPressed: () {
        context.goNamed('regis');
       },
      )
     ],
    );
  }
}

class espacio extends StatefulWidget {
  const espacio({
    super.key,
  });

  @override
  State<espacio> createState() => _espacioState();
}

class _espacioState extends State<espacio> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        txtfild(
        controller1: userController, 
        labelText1: 'Correo Electrónico', 
        hintText1: 'Ingrese su correo electrónico', 
        icon1: Icons.email_outlined,
        ),
        sized20(),
        TextField(
          controller: passwordController,
          obscureText: _obscureText,
          style: TextStyle(
          fontSize: 16,
          color: Colors.blue[800],
          ),
          decoration: InputDecoration(
          alignLabelWithHint: true,
          icon: 
          Icon(
            Icons.lock_outline,
            color: Colors.blue[700],
          ),
          enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.blue[500]!,
            width: 1.0,
          ),
        ),
          focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.blue[500]!,
            width: 2.0,
          ),
        ),
          labelText: 'Contraseña',
          labelStyle: TextStyle(
            fontFamily: 'Courier New',
            fontSize: 16,
            color: Colors.blue[500],
          ), 
            
            hintText: 'Ingrese su contraseña',
            hintStyle: TextStyle(
              fontFamily: 'Courier New',
            color: Colors.grey,
            fontSize: 16,
        ),
            
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            suffixIcon: IconButton(
              icon: Icon(
                color: Colors.blue[700],
                _obscureText ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
              });
             },
           ),
          )
        ),
      ],
    );
  }
}



