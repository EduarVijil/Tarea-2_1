import 'package:app2_1/elements/elem_simple.dart';
import 'package:app2_1/widgets/btn.dart';
import 'package:app2_1/widgets/txtf.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class regislocal extends StatefulWidget {
  const regislocal({
    super.key,
  });

  @override
  State<regislocal> createState() => _regislocalState();
}

class _regislocalState extends State<regislocal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        txtfild(
          controller1: nombreController,
          labelText1: 'Nombre Completo', 
          hintText1:  'Ingrese su nombre completo', 
          icon1: Icons.person_outline,
          ),
        sized20(),
        txtfild(
        controller1: userController2, 
        labelText1: 'Correo Electrónico', 
        hintText1: 'Ingrese su correo electrónico', 
        icon1: Icons.email_outlined,
        ),
        sized20(),
        txtfild(
          controller1: telefonoController,
          labelText1: 'Teléfono', 
          hintText1: 'Ingrese su número de teléfono', 
          icon1: Icons.phone_outlined,
          keyboardType1: TextInputType.phone,
          ),
          sized20(),
        txtfild(
          controller1: passwordController2,
          labelText1: 'Contraseña', 
          hintText1: 'Ingrese su contraseña', 
          icon1: Icons.lock_outline,
          obscureText1: true,
          ),
        sized20(),
        txtfild(
          controller1: confirmPasswordController,
          labelText1: 'Confirmar Contraseña', 
          hintText1: 'Ingrese su contraseña', 
          icon1: Icons.lock_outline,
          obscureText1: true,
          ),
          sized20(), 
        btn1(),
      ],
    );
  }
}

RegExp specialChar = RegExp(r'[!@#$%^&*(),.?":{}|<>]');

class btn1 extends StatelessWidget {
  const btn1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [ 
          buton(
            
            label2: 'Registrarse',
            backgroundColor: Colors.indigo,
            
            onPressed: () {

              if(userController2.text.isEmpty || passwordController2.text.isEmpty ||
                 confirmPasswordController.text.isEmpty || nombreController.text.isEmpty ||
                 telefonoController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Color.fromARGB(255, 31, 31, 31),
                      duration: Duration(milliseconds: 1800),
                      content: Text('Por favor, complete todos los campos')));
                  return;
                 }

              if(passwordController2.text != confirmPasswordController.text) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Color.fromARGB(255, 201, 54, 44),
                     duration: Duration(milliseconds: 1600),
                    content: Text('Las contraseñas no coinciden')));
                return;
              }

              if(passwordController2.text.length < 6 ) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Color.fromARGB(255, 201, 54, 44),
                     duration: Duration(seconds: 2),
                    content: Text('La contraseña debe tener al menos 6 caracteres')));
                return;
              }

              if( passwordController2.text.contains(' ')){
                  ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Color.fromARGB(255, 201, 54, 44),
                     duration: Duration(seconds: 1),
                    content: Text('La contraseña no debe tener espacios')));
                return;
              }

              if(!specialChar.hasMatch(passwordController2.text))
              {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Color.fromARGB(255, 201, 54, 44),
                     duration: Duration(seconds: 3),
                    content: Text('La contraseña debe tener al menos un caracter especial')));
                return;
              }
                                 
              if(!userController2.text.contains('@unah.hn')) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor:  Color.fromARGB(255, 70, 22, 18),
                    duration: Duration(seconds: 3),
                    content: Text('Ingrese un correo electrónico de tipo @unah.hn')));
                return;
              }
              else
              {
               
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Color.fromARGB(255, 31, 31, 31),
                    content: Text('Registro exitoso'))); 
                userController2.clear();
                passwordController2.clear();
                nombreController.clear();
                telefonoController.clear();
                confirmPasswordController.clear();
              }
            },
          ),
        sized20(),
        buton(
          label2: 'Volver al inicio', 
          backgroundColor: Colors.teal, 
          onPressed: () {
            context.goNamed('login');
            },
          ),
       ],
      ),
    );
  }
}
