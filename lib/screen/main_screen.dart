import 'package:flutter/material.dart';
import 'package:flutter_calculator/domain/button_type.dart';
import 'package:flutter_calculator/widget/button_widget.dart';
import 'package:flutter_calculator/widget/result_widget.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainScreenState createState() => _MainScreenState();

  void showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Added to favorite'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

}

class _MainScreenState extends State<MainScreen> {

  String text = "";

  void onClick(ButtonType buttonType) {
    setState(() {
      if (buttonType.index == ButtonType.CLEAR.index) {
        text = "";
      } else if (buttonType.index == ButtonType.DELETE.index) {
        if (text.length > 0) {
          text = text.substring(0, text.length - 1);
        }
      } else {
        if (text.length < 16) {
          text += buttonType
              .getButtonPresentation()
              .text;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: false,
//      appBar: AppBar(
//        title: Text(widget.title),
//      ),
      body: Column(
        children: [
          Expanded(
            child: ResultWidget(text),
          ),
          MediaQuery.removePadding(context: context, removeTop: true, child:
            GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                childAspectRatio: (7 / 6),
                children: List.generate(ButtonType.values.length, (index) {
                  return ButtonWidget(ButtonType.values.elementAt(index), (buttonType) => onClick(buttonType));
                })
            )
          )
        ],
      ),
    );
  }
}
