import 'package:flutter/material.dart';
import 'package:kinopoisk/pages/login/widgets/basement.dart';
import 'package:kinopoisk/pages/login/widgets/login_button.dart';
import 'package:kinopoisk/pages/login/widgets/login_widget.dart';
import 'package:kinopoisk/pages/login/widgets/new_id.dart';
import 'package:kinopoisk/pages/login/widgets/qr_other.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(
          child: Text(
            'Яндекс ID',
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              LoginWidget(),
              SizedBox(height: 20),
              LoginButton(),
              SizedBox(height: 10),
              NewID(),
              SizedBox(height: 30),
              QROther(),
              SizedBox(height: 40),
              Basement(),
            ],
          )),
    );
  }
}
