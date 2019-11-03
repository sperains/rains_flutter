import 'package:flutter/material.dart';


class BasicDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1572761404623&di=d3c6419dd7660c256ffc97399c1cdb0f&imgtype=0&src=http%3A%2F%2Fwww.zhengzhisf.com%2FUploadFiles%2F201282282333376.jpg'),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.repeatY
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[400], 
            BlendMode.hardLight
          ),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32, color: Colors.white,),
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(8),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              border: Border.all(
                  color: Colors.indigoAccent[100],
                  width: 3,
                  style: BorderStyle.solid
              ),
              // borderRadius: BorderRadius.circular(16),
              //设置容器阴影
              boxShadow: [
                BoxShadow(
                  offset: Offset(6, 7),
                  color: Color.fromRGBO(16, 20, 188, 1),
                  blurRadius: 15,
                  spreadRadius: -9,
                )
              ],
              //设置容器形状, 可代替borderRadius
              shape: BoxShape.circle,
              //设置容器渐变效果
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1),
                  Color.fromRGBO(3, 28, 128, 1)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
          )
        ],
      ),
    );
  }
}

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