import 'package:flutter/material.dart';

final userController = TextEditingController();
final userController2 = TextEditingController();
final passwordController = TextEditingController();
final passwordController2 = TextEditingController();
final confirmPasswordController = TextEditingController();
final nombreController = TextEditingController();
final telefonoController = TextEditingController();

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class sized20 extends StatelessWidget {
  const sized20({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
    );
  }
}

