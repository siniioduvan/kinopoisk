import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            'Войдите или зарегистрируйтесь',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        ToggleSwitch(
          customTextStyles: [
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
          ],
          minWidth: double.infinity,
          minHeight: 60.0,
          fontSize: 16.0,
          initialLabelIndex: 0,
          activeBgColor: [Colors.grey],
          activeFgColor: Colors.black,
          inactiveBgColor: Colors.grey[200],
          inactiveFgColor: Colors.black,
          totalSwitches: 2,
          labels: ['Почта', 'Телефон'],
          onToggle: (index) {
            print('switched to: $index');
          },
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Логин или email",
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Colors.yellow)),
          ),
        ),
      ],
    );
  }
}
