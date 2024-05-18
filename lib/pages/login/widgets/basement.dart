import 'package:flutter/material.dart';

class Basement extends StatelessWidget {
  const Basement({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          style: TextStyle(color: Colors.grey[700], fontSize: 16),
          'Яндекс ID - ключ от всех сервисов',
        ),
        SizedBox(height: 10),
        TextButton(
          onPressed: () {},
          child: Text('Узнать больше'),
        ),
      ],
    );
  }
}
