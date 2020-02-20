import 'package:flutter/material.dart';

class ButtonStyle {

  Color backgroundColor;
  Color textColor;

  ButtonStyle(this.backgroundColor, this.textColor);

}

class ButtonPresentation {

  String text;
  ButtonStyle buttonStyle;
  String iconName;
  String fontFamilyName;

  ButtonPresentation(this.text, this.buttonStyle, [this.iconName, this.fontFamilyName]);

  Color getBackgroundColor() {
    return buttonStyle.backgroundColor;
  }
  Color getTextColor() {
    return buttonStyle.textColor;
  }
  String getText() {
    return text;
  }
  Image getIcon() {
    return Image.asset(iconName);
  }
  ThemeData getTheme() {
    return ThemeData(fontFamily: fontFamilyName);
  }

}

enum ButtonStyleType {

  BLUE, GREY_LIGHT, GREY_MIDDLE, GREY_DARK, BROWN_LIGHT, BROWN_MIDDLE

}

extension StyleType on ButtonStyleType {
  ButtonStyle getButtonStyle() {
    switch(this) {
      case ButtonStyleType.BLUE:          return ButtonStyle(Color(0xFFCED4E2), Color(0x3D000000));
      case ButtonStyleType.GREY_LIGHT:    return ButtonStyle(Color(0xFFF3EAE3), Color(0x3D000000));
      case ButtonStyleType.GREY_MIDDLE:   return ButtonStyle(Color(0xFFECE5DF), Color(0x3D000000));
      case ButtonStyleType.GREY_DARK:     return ButtonStyle(Color(0xFF978D8C), Color(0xFFF4EBE5));
      case ButtonStyleType.BROWN_LIGHT:   return ButtonStyle(Color(0x99A79494), Color(0xFFF4EBE5));
      case ButtonStyleType.BROWN_MIDDLE:  return ButtonStyle(Color(0xBFA09595), Color(0xFFF4EBE5));
    }
    return ButtonStyle(Color(0xFFCED4E2), Color(0x3D000000));
  }
}

enum ButtonType {

  VARIABLE_1, VARIABLE_2, VARIABLE_3, VARIABLE_4,
  CLEAR, DIVIDE, MULTIPLY, DELETE,
  SEVEN, EIGHT, NINE, SUBTRACT,
  FOUR, FIVE, SIX, ADD,
  ONE, TWO, THREE, BRACKETS,
  ZERO, DOT, POS_NEG, EQUAL

}

extension ButtonPresentationType on ButtonType {

  ButtonPresentation getButtonPresentation() {
    switch(this) {
      case ButtonType.VARIABLE_1:       return ButtonPresentation("V1", ButtonStyleType.BLUE.getButtonStyle());
      case ButtonType.VARIABLE_2:       return ButtonPresentation("V2", ButtonStyleType.BLUE.getButtonStyle());
      case ButtonType.VARIABLE_3:       return ButtonPresentation("V3", ButtonStyleType.BLUE.getButtonStyle());
      case ButtonType.VARIABLE_4:       return ButtonPresentation("V4", ButtonStyleType.BLUE.getButtonStyle());

      case ButtonType.CLEAR:            return ButtonPresentation("C", ButtonStyleType.GREY_LIGHT.getButtonStyle());
      case ButtonType.DIVIDE:           return ButtonPresentation("÷", ButtonStyleType.GREY_LIGHT.getButtonStyle());
      case ButtonType.MULTIPLY:         return ButtonPresentation("x", ButtonStyleType.GREY_LIGHT.getButtonStyle());
      case ButtonType.DELETE:           return ButtonPresentation("<-", ButtonStyleType.BROWN_LIGHT.getButtonStyle());

      case ButtonType.SEVEN:            return ButtonPresentation("7", ButtonStyleType.GREY_MIDDLE.getButtonStyle());
      case ButtonType.EIGHT:            return ButtonPresentation("8", ButtonStyleType.GREY_MIDDLE.getButtonStyle());
      case ButtonType.NINE:             return ButtonPresentation("9", ButtonStyleType.GREY_MIDDLE.getButtonStyle());
      case ButtonType.SUBTRACT:         return ButtonPresentation("-", ButtonStyleType.BROWN_MIDDLE.getButtonStyle());

      case ButtonType.FOUR:             return ButtonPresentation("4", ButtonStyleType.GREY_LIGHT.getButtonStyle());
      case ButtonType.FIVE:             return ButtonPresentation("5", ButtonStyleType.GREY_LIGHT.getButtonStyle());
      case ButtonType.SIX:              return ButtonPresentation("6", ButtonStyleType.GREY_LIGHT.getButtonStyle());
      case ButtonType.ADD:              return ButtonPresentation("+", ButtonStyleType.BROWN_LIGHT.getButtonStyle());

      case ButtonType.ONE:              return ButtonPresentation("1", ButtonStyleType.GREY_MIDDLE.getButtonStyle());
      case ButtonType.TWO:              return ButtonPresentation("2", ButtonStyleType.GREY_MIDDLE.getButtonStyle());
      case ButtonType.THREE:            return ButtonPresentation("3", ButtonStyleType.GREY_MIDDLE.getButtonStyle());
      case ButtonType.BRACKETS:         return ButtonPresentation("()", ButtonStyleType.BROWN_MIDDLE.getButtonStyle());

      case ButtonType.ZERO:             return ButtonPresentation("0", ButtonStyleType.GREY_LIGHT.getButtonStyle());
      case ButtonType.DOT:              return ButtonPresentation(".", ButtonStyleType.GREY_LIGHT.getButtonStyle());
      case ButtonType.POS_NEG:          return ButtonPresentation("+/-", ButtonStyleType.GREY_LIGHT.getButtonStyle());
      case ButtonType.EQUAL:            return ButtonPresentation("=", ButtonStyleType.GREY_DARK.getButtonStyle());
    }

    return ButtonPresentation("ER", ButtonStyleType.BLUE.getButtonStyle());
  }
}