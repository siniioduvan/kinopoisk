import 'package:flutter/material.dart';

class NewID extends StatelessWidget {
  const NewID({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 60)),
        backgroundColor: MaterialStateProperty.all(
          Colors.white,
        ),
      ),
      onPressed: () {},
      child: const Text(
        'Создать ID',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
