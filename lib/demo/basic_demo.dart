import 'package:flutter/material.dart';


class BasicDemo extends StatelessWidget {

  final TextStyle _textStyle = TextStyle(
    fontSize: 16
  );

  final String _author = '李白';
  final String _title = '将进酒';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
          text: 'Sperains',
          style: TextStyle(
            color: Colors.lightBlue,
            fontSize: 32
          ),
          children: [
            TextSpan(
              text: '.net',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black87
              )
            )
          ],
        ),
      ),
    );
  }
}