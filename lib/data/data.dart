import 'package:flutter/material.dart';

import 'dataList.dart';

import 'package:url_launcher/url_launcher.dart';

class Service extends StatefulWidget {
  final Data data;

  const Service({Key? key, required this.data}) : super(key: key);

  @override
  _RecipeDetailState createState() {
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<Service> {

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data.label),
      ),
      // 2
      body:
      SafeArea(
        // 3
        child: Column(
          children: <Widget>[Container( height: 50, alignment: Alignment.center, color: Colors.green,
            child: new InkWell(
                child: new Text('Открыть ресурс', style: TextStyle(height: 2),),
                onTap: () => launch(widget.data.ResUrl)
            ),),
            // 4
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(image:
              NetworkImage(widget.data.imageUrl)),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            // 6
            Text(
              widget.data.label,
              style: const TextStyle(fontSize: 27),
            ),
            // 7
            Expanded(
              // 8
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.data.datas.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.data.datas[index];

                  // 9
                  return Text('${ingredient.quantity} '
                      '${ingredient.measure} '
                      '${ingredient.name}');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}