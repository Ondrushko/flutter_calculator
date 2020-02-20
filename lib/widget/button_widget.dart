import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/domain/button_type.dart';

class ButtonWidget extends StatelessWidget {

  final ButtonType buttonType;
  final Function onClickHandler;

  ButtonWidget(this.buttonType, this.onClickHandler);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClickHandler(buttonType),
      child: Container(
        color: buttonType.getButtonPresentation().buttonStyle.backgroundColor,
        child: Center(
            child: Text(buttonType.getButtonPresentation().text, style: TextStyle(color: buttonType.getButtonPresentation().buttonStyle.textColor, fontSize: 28), textAlign: TextAlign.center,)
        )
      )
    );
  }

}