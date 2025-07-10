import 'package:app2_1/widgets/btn.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class principal extends StatefulWidget {
  const principal({super.key});

  @override
  State<principal> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Principal',
            style: TextStyle(
              fontFamily: 'Courier New',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.green[800],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bienvenido',
                style: TextStyle(
                  fontSize: 54,
                  color: Colors.blue[800],
                  fontFamily: 'Courier New',
                ),
              ),
              buton(
                label2: 'Cerrar Sesión',
                backgroundColor: Colors.blue,
                onPressed: () {
                  context.goNamed('login');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}