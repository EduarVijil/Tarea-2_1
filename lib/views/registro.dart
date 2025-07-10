import 'package:app2_1/elements/elem_simple.dart';
import 'package:app2_1/elements/regis_elem.dart';
import 'package:flutter/material.dart';

class registro extends StatelessWidget {
  const registro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(   
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              sized20(),
              const Text(
                'Registro',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              sized20(),
              regislocal(),
              sized20(),
            ],
          ),
         ),
        )
      )
    );
  }
}
