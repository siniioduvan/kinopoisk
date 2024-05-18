import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({
    super.key,
  });

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  var textFieldText = 'Логин или email';
  final loginTextController = TextEditingController();
  String? errorText = null;

  ///auth function
  void auth() {
    final login = loginTextController.text;
    if (login == 'admin') {
      print('app auth');
      errorText = null;
    } else {
      print('exception!!!');
      errorText = 'Неверный логин';
    }
    setState(() {});
  }

  void faceID() {}

  @override
  Widget build(BuildContext context) {
    final errorText = this.errorText;

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
          onToggle: (indexSwitch) {},
        ),
        const SizedBox(
          height: 20,
        ),
        if (errorText != null) ...[Text(errorText), SizedBox(height: 5)],
        TextField(
          controller: loginTextController,
          decoration: InputDecoration(
            hintText: textFieldText,
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide:
                    BorderSide(color: Color.fromRGBO(37, 36, 45, 1), width: 2)),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          style: ButtonStyle(
            minimumSize:
                MaterialStateProperty.all(const Size(double.infinity, 60)),
            backgroundColor: MaterialStateProperty.all(
              const Color.fromRGBO(37, 36, 45, 1),
            ),
          ),
          onPressed: auth,
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
            onPressed: faceID,
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
