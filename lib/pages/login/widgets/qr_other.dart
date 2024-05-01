import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QROther extends StatelessWidget {
  const QROther({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
              minimumSize:
                  MaterialStateProperty.all(const Size(double.infinity, 60)),
              backgroundColor: MaterialStateProperty.all(
                Colors.white,
              ),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.qr_code,
                  color: Colors.black,
                ),
                Text(
                  style: TextStyle(color: Colors.black),
                  'QR-код',
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
              minimumSize:
                  MaterialStateProperty.all(const Size(double.infinity, 60)),
              backgroundColor: MaterialStateProperty.all(
                Colors.white,
              ),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
                Text(
                  style: TextStyle(color: Colors.black),
                  'Еще',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
