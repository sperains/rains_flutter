import 'package:flutter/material.dart';
import 'package:rains_flutter/utils/unique_color_generator.dart';

class StatefulColorfulTile extends StatefulWidget {

  StatefulColorfulTile({Key key}) : super(key: key);

  @override
  _StatefulColorfulTileState createState() => _StatefulColorfulTileState();
}

class _StatefulColorfulTileState extends State<StatefulColorfulTile> {

  final Color defaultColor = UniqueColorGenerator().getColor();

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
