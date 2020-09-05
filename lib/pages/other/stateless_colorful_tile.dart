import 'package:flutter/material.dart';
import 'package:rains_flutter/utils/unique_color_generator.dart';

class StatelessColorfulTile extends StatelessWidget {

  final defaultColor = UniqueColorGenerator().getColor();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Container(
        color: defaultColor,
      ),
    );
  }
}
