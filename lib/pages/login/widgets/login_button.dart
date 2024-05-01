import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ButtonStyle(
            minimumSize:
                MaterialStateProperty.all(const Size(double.infinity, 60)),
            backgroundColor: MaterialStateProperty.all(
              const Color.fromRGBO(37, 36, 45, 1),
            ),
          ),
          onPressed: () {},
          child: const Text(
            'Войти',
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
            style: ButtonStyle(
              minimumSize:
                  MaterialStateProperty.all(const Size(double.infinity, 60)),
              backgroundColor: MaterialStateProperty.all(
                Colors.grey[200],
              ),
            ),
            onPressed: () {},
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.fingerprint,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('По лицу или отпечатку',
                    style: TextStyle(color: Colors.black))
              ],
            )),
      ],
    );
  }
}
