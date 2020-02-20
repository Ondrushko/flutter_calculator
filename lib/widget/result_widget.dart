import 'package:flutter/material.dart';

class ResultWidget extends StatefulWidget {

  final String text;

  @override
  _ResultWidgetState createState() => _ResultWidgetState();

  ResultWidget(this.text);

}

class _ResultWidgetState extends State<ResultWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF9F9594),
      child: Center(
          child: Text(widget.text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFFFFF4F0), fontSize: 85),
          )
        )
      );
  }
}
