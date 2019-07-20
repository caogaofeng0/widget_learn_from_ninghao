import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  double get opacity => null;

  
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://img15.3lian.com/2015/f1/110/d/53.jpg'),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
          // colorFilter: ColorFilter.mode(
          //   Colors.indigoAccent[600],
          //   BlendMode.colorBurn
          // )
          // repeat: ImageRepeat.noRepeat
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 23, color: Colors.white),
            // color: Color.fromRGBO(3, 54, 255, 0.6), 不能和decoration 颜色同时存在
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
               color: Color.fromRGBO(3, 54, 255, 0.6),
              //  border: Border( // 单个设置
              //    top: BorderSide(
              //      color: Colors.indigoAccent[100],
              //      width:35.0,
              //      style: BorderStyle.solid
              //    )
              //  )
              border: Border.all(
                color: Colors.black,
                width: 1.0,
                style: BorderStyle.solid,
              ),
              // borderRadius:BorderRadius.all(Radius.circular(5)), // 圆角
              boxShadow: [
                BoxShadow(
                  offset: Offset(4.0, 7.0),
                  color: Color.fromRGBO(16, 20, 18, 0.7),
                  blurRadius: 1.0,
                  spreadRadius: -2.0
                )
              ],
              shape: BoxShape.circle,
              // gradient: RadialGradient(
              //   colors: [
              //     Color.fromRGBO(7, 103, 255, 1.0),
              //     Color.fromRGBO(3, 28, 128, 1.0),
              //   ]
              // )
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 103, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ],
                begin: Alignment(1.0, 5),
                end: Alignment(7, 50)
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
    return RichText(
      text: TextSpan(
        text: 'caogf',
        style:TextStyle(
          color: Colors.deepOrangeAccent,
          fontSize: 23,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100
        ),
        children: [
          TextSpan(
            text: '.go',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey
            )
          )
        ]
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0
  );
  final String _author = "李白";
  final String _title = "将进酒";
  @override
  Widget build(BuildContext context) {
    var text = Text(
      "《$_author》 --- $_title  君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。岑夫子，丹丘生，将进酒，杯莫停。与君歌一曲，请君为我倾耳听。钟鼓馔玉不足贵，但愿长醉不复醒。古来圣贤皆寂寞，惟有饮者留其名。陈王昔时宴平乐，斗酒十千恣欢谑。主人何为言少钱，径须沽取对君酌。五花马，千金裘，呼儿将出换美酒，与尔同销万古愁",
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
    return text;
  }
}