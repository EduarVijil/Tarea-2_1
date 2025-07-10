// ignore_for_file: camel_case_types

import 'package:app2_1/elements/elem_simple.dart';
import 'package:app2_1/elements/login_elem.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
             SizedBox(
                height: 120,
              ),
              Text(
                'Bienvenido Puma',
                style: TextStyle(
                  fontFamily: 'Courier New',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[800],
                  shadows: [
                  Shadow(
                    color: Colors.green[300]!,
                    offset: Offset(2, 2),
                    blurRadius: 8,
                  ),
                 ],
                ),
              ),
              Icon(
                Icons.school,
                size: 100,
                color: Colors.green[800],
                shadows: [
                  Shadow(
                    color: Colors.green[300]!,
                    offset: Offset(2, 2),
                    blurRadius: 105,
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              espacio(),
              sized20(),
              boton1(),
              sized20(),
            ],
           ),
         ),
        )
      ),
    );
  }
}

