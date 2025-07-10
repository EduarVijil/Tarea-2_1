import 'package:flutter/material.dart';

class buton extends StatelessWidget {
  
  final String label2;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const buton({super.key, 
    required this.label2,
    required this.backgroundColor, 
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.tryParse('180'),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: Colors.grey[200],
          padding: EdgeInsets.all(10),
        ),
        onPressed: () {  
          onPressed();
        },
        child: Text(label2),
      ),
    );
  }
}