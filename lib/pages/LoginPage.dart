import 'package:flutter/material.dart';

import '../Rout/Routes.dart';

class LogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Введите логин",
                      labelText: "Логин",
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: Text("Авторизация"),
              style: TextButton.styleFrom(minimumSize: Size(50, 10)),
            ),
          ],
        ),
      ),
    );
  }
}
