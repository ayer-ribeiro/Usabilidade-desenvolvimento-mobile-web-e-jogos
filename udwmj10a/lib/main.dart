import 'package:flutter/material.dart';

class Pallete {
  static const Color primaryColor = Colors.white;
  static const Color secondaryColor = Colors.orange;
  static const Color accentColor = Colors.lightBlue;
  static const Color secondaryAccentColor = Colors.lightBlue;
  static const Color alertColor = Colors.red;
  static const Color backgroundColor = Colors.black26;
  static const Color highlightColor = Colors.grey;
}

class Number {
  static const String zero = "0";
  static const String one = "1";
  static const String two = "2";
  static const String three = "3";
  static const String four = "4";
  static const String five = "5";
  static const String six = "6";
  static const String seven = "7";
  static const String eight = "8";
  static const String nine = "9";
}

class Symbol {
  static const String divider = "/";
  static const String multiplier = "*";
  static const String minus = "-";
  static const String plus = "+";
  static const String comma = ".";
  static const String equal = "=";
  static const String clear = "AC";
}

class Dimens {
  static const defaultPadding = EdgeInsets.all(16);
}

enum Type { numbers, operators, comma, equal, clear }

class TypeResolver {
  static Type getType(String text) {
    if (text.length <= 0) {
      throw ArgumentError.value("Invalid argument");
    }

    if (text.compareTo(Number.zero) == 0 ||
        text.compareTo(Number.one) == 0 ||
        text.compareTo(Number.two) == 0 ||
        text.compareTo(Number.three) == 0 ||
        text.compareTo(Number.four) == 0 ||
        text.compareTo(Number.five) == 0 ||
        text.compareTo(Number.six) == 0 ||
        text.compareTo(Number.seven) == 0 ||
        text.compareTo(Number.eight) == 0 ||
        text.compareTo(Number.nine) == 0) {
      return Type.numbers;
    }

    if (text.compareTo(Symbol.divider) == 0 ||
        text.compareTo(Symbol.multiplier) == 0 ||
        text.compareTo(Symbol.minus) == 0 ||
        text.compareTo(Symbol.plus) == 0) {
      return Type.operators;
    }

    if (text.compareTo(Symbol.comma) == 0) {
      return Type.comma;
    }

    if (text.compareTo(Symbol.equal) == 0) {
      return Type.equal;
    }

    if (text.compareTo(Symbol.clear) == 0) {
      return Type.clear;
    }

    throw ArgumentError.value("Invalid argument");
  }
}

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Pallete.backgroundColor,
          dialogBackgroundColor: Pallete.backgroundColor,
          backgroundColor: Pallete.backgroundColor,
          buttonTheme: ButtonThemeData(),
          textTheme: TextTheme(),
        ),
        home: CalculadoraHome(),
      ),
    );

class CalculadoraHome extends StatefulWidget {
  CalculadoraHomeState createState() {
    return CalculadoraHomeState();
  }
}

class CalculadoraHomeState extends State<CalculadoraHome> {
  String secondaryValue = "";
  String value = "";
  String lastOperator = "";

  void onButtonPressed(String value) {
    Type actionType = TypeResolver.getType(value);

    if (actionType == Type.numbers) {
      onNumberPressed(value);
    } else if (actionType == Type.operators) {
      onOperatorPressed(value);
    } else if (actionType == Type.comma) {
      onCommaPressed();
    } else if (actionType == Type.equal) {
      onEqualPressed();
    } else if (actionType == Type.clear) {
      onClearPressed();
    }
  }

  void onNumberPressed(String number) {
    setState(() {
      if (lastOperator.length <= 0 && secondaryValue.length >= 0) {
        secondaryValue = "";
      }
      if (value.length <= 8) {
        value = value + number;
      }
    });
  }

  void onOperatorPressed(String calcOperator) {
    if (secondaryValue.length <= 0) {
      setState(() {
        secondaryValue = value;
        value = "";
        lastOperator = calcOperator;
      });
      return;
    }

    if (value.length <= 0) {
      lastOperator = calcOperator;
      return;
    }

    if (lastOperator.length > 0) {
      if (TypeResolver.getType(lastOperator) == Type.operators) {
        if (lastOperator.compareTo(Symbol.divider) == 0) {
          setState(() {
            if (value.length <= 8) {
              double currentNumber = double.tryParse(value);
              double secondaryNumber = double.tryParse(secondaryValue);
              secondaryValue = (secondaryNumber / currentNumber).toString();
              value = "";
            }
          });
        }
        if (lastOperator.compareTo(Symbol.multiplier) == 0) {
          setState(() {
            if (value.length <= 8) {
              double currentNumber = double.tryParse(value);
              double secondaryNumber = double.tryParse(secondaryValue);
              secondaryValue = (secondaryNumber * currentNumber).toString();
              value = "";
            }
          });
        }
        if (lastOperator.compareTo(Symbol.minus) == 0) {
          setState(() {
            if (value.length <= 8) {
              double currentNumber = double.tryParse(value);
              double secondaryNumber = double.tryParse(secondaryValue);
              secondaryValue = (secondaryNumber - currentNumber).toString();
              value = "";
            }
          });
        }
        if (lastOperator.compareTo(Symbol.plus) == 0) {
          setState(() {
            if (value.length <= 8) {
              double currentNumber = double.tryParse(value);
              double secondaryNumber = double.tryParse(secondaryValue);
              secondaryValue = (secondaryNumber + currentNumber).toString();
              value = "";
            }
          });
        }
      }
    }

    lastOperator = calcOperator;
  }

  void onCommaPressed() {
    if (!value.contains(Symbol.comma)) {
      value = value + Symbol.comma;
    }
  }

  void onEqualPressed() {
    if (secondaryValue.length <= 0) {
      setState(() {
        secondaryValue = value;
        value = "";
      });
      return;
    }

    if (value.length <= 0) {
      return;
    }

    if (lastOperator.length > 0) {
      if (TypeResolver.getType(lastOperator) == Type.operators) {
        if (lastOperator.compareTo(Symbol.divider) == 0) {
          setState(() {
            if (value.length <= 8) {
              double currentNumber = double.tryParse(value);
              double secondaryNumber = double.tryParse(secondaryValue);
              secondaryValue = (secondaryNumber / currentNumber).toString();
              value = "";
            }
          });
        }
        if (lastOperator.compareTo(Symbol.multiplier) == 0) {
          setState(() {
            if (value.length <= 8) {
              double currentNumber = double.tryParse(value);
              double secondaryNumber = double.tryParse(secondaryValue);
              secondaryValue = (secondaryNumber * currentNumber).toString();
              value = "";
            }
          });
        }
        if (lastOperator.compareTo(Symbol.minus) == 0) {
          setState(() {
            if (value.length <= 8) {
              double currentNumber = double.tryParse(value);
              double secondaryNumber = double.tryParse(secondaryValue);
              secondaryValue = (secondaryNumber - currentNumber).toString();
              value = "";
            }
          });
        }
        if (lastOperator.compareTo(Symbol.plus) == 0) {
          setState(() {
            if (value.length <= 8) {
              double currentNumber = double.tryParse(value);
              double secondaryNumber = double.tryParse(secondaryValue);
              secondaryValue = (secondaryNumber + currentNumber).toString();
              value = "";
            }
          });
        }
      }
    }

    lastOperator = "";
  }

  void onClearPressed() {
    setState(() {
      value = "";
      secondaryValue = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: Dimens.defaultPadding,
                  child: Text(
                    secondaryValue,
                    style: TextStyle(
                        fontSize: 32.0, color: Pallete.secondaryAccentColor),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                  onPressed: () {
                    onButtonPressed(Symbol.clear);
                  },
                  highlightColor: Pallete.highlightColor,
                  child: Container(
                    padding: Dimens.defaultPadding,
                    child: Text(
                      Symbol.clear,
                      style:
                          TextStyle(fontSize: 32.0, color: Pallete.alertColor),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: Dimens.defaultPadding,
                    child: Text(
                      value,
                      textAlign: TextAlign.right,
                      style:
                          TextStyle(fontSize: 48.0, color: Pallete.accentColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              getButton(Number.seven),
              getButton(Number.eight),
              getButton(Number.nine),
              getButton(Symbol.divider, color: Pallete.secondaryColor),
            ],
          ),
          Row(
            children: [
              getButton(Number.four),
              getButton(Number.five),
              getButton(Number.six),
              getButton(Symbol.multiplier, color: Pallete.secondaryColor),
            ],
          ),
          Row(
            children: [
              getButton(Number.one),
              getButton(Number.two),
              getButton(Number.three),
              getButton(Symbol.minus, color: Pallete.secondaryColor),
            ],
          ),
          Row(
            children: [
              getButton(Number.zero),
              getButton(Symbol.comma),
              getButton(Symbol.equal),
              getButton(Symbol.plus, color: Pallete.secondaryColor),
            ],
          ),
        ],
      ),
    );
  }

  Widget getButton(String value, {Color color = Pallete.primaryColor}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          onButtonPressed(value);
        },
        highlightColor: Pallete.highlightColor,
        child: Container(
          padding: Dimens.defaultPadding,
          child: Text(
            value,
            style: TextStyle(fontSize: 56.0, color: color),
          ),
        ),
      ),
    );
  }
}
