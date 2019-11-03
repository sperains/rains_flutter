import 'package:flutter/material.dart';

class RichTextDemo extends StatelessWidget {
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