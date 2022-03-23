import 'package:flutter/material.dart';
import '../Rout/Routes.dart';

class LogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Авторизация",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Введите пользователя",
                      labelText: "Имя пользователя",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Введите пароль",
                      labelText: "Пароль",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: Text("Авторизация"),
              style: TextButton.styleFrom(minimumSize: Size(150, 40)),
            ),
          ],
        ),
      ),
    );
  }
}
