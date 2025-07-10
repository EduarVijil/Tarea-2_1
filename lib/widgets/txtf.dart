import 'package:flutter/material.dart';

class txtfild extends StatelessWidget {
  final TextEditingController? controller1;
  final String labelText1;
  final String hintText1;
  final IconData icon1;
  final InputDecoration? decoration;
  final TextInputType? keyboardType1;
  final bool obscureText1;

  const txtfild({
    super.key,
    this.controller1,
    required this.labelText1,
    required this.hintText1,
    required this.icon1, 
    this.decoration, 
    this.keyboardType1, 
    this.obscureText1 = false,
  });  
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText1,
      controller: controller1,
      keyboardType: keyboardType1,
      style: TextStyle(
        fontSize: 16,
        color: Colors.blue[800],
      ),
      
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0)),
        contentPadding: EdgeInsets.all(15),

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

        label: Text(
          labelText1,
          style: TextStyle(
            fontFamily: 'Courier New',
            fontSize: 16,
            color: Colors.blue[500],
          ),
        ),
        alignLabelWithHint: true,
        icon: 
        Icon(
          icon1,
          color: Colors.blue[700],
        ),
        
        hintText: hintText1,
        hintStyle: TextStyle(
          fontFamily: 'Courier New',
          color: Colors.grey,
          fontSize: 14,
        ),
      )
    );
  }
}

