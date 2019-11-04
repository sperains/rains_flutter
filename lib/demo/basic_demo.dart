import 'package:flutter/material.dart';
import 'package:rains_flutter/demo/container_box_decoration_demo.dart';


class BasicDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.lightGreen,
      alignment: Alignment.center,
      child: Container(
        constraints: BoxConstraints.expand(height: 300, width: 300),
        child: Column(
          children: <Widget>[
            FlatButton(
              child: Text('FlatButton'),
              onPressed: () => {},
              color: Colors.lightBlueAccent,
            ),
            OutlineButton(
              child: Text('OutLineButton', style: TextStyle(color: Colors.redAccent),),
              onPressed: () => {},
              color: Colors.greenAccent,
            ),
            Container(
              height: 50,
              width: 120,
              child: RaisedButton(
                child: Text("raise button"),
                onPressed: () => {},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10) ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.redAccent[100]
              ),
            ),
            
            FloatingActionButton(
              child: Icon(Icons.airport_shuttle),
              onPressed: () => {},
            )
          ],
        ),
      ),
    );
  }
}

