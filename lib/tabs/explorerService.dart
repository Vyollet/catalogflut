import 'package:flutter/material.dart';


import '../data/dataFiles.dart';
import '../data/data.dart';
import '../data/dataList.dart';

class ExploreScreen extends StatelessWidget {

  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("Лист ресурсов"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: Itemstest.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Service(data: Data.samples[index]);
                  },
                ),
              );
            },
            child: Card(
              child: Stack(
                alignment: FractionalOffset.bottomCenter,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(Itemstest[index].itemImage)
                        )
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 40.0,
                    color: Colors.indigo,
                    child: Text(Itemstest[index].itemName,
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0, color: Colors.white),),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
