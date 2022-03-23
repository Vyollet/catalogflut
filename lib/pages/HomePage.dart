import 'package:flutter/material.dart';

import '../data/dataFiles.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("Лист ресурсов"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: storeItems.length ,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Card(
              child: Stack(
                alignment: FractionalOffset.bottomCenter,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(storeItems[index].itemImage)
                        )
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 40.0,
                    color: Colors.indigo,
                    child: Text(storeItems[index].itemName,
                      style: TextStyle     (fontWeight: FontWeight.w700, fontSize: 16.0, color: Colors.white),),
                  )
                ],
              ),
            ),
          );
        },),
    );
  }
}
