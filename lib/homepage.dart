import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_calculator/theme/colors.dart';
import 'package:neumorphic_calculator/widgets/number_buttons.dart';
import 'widgets/number_display.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _history = "";
  String _expression = "";

  void numberPressed(String text) {
    setState(() {
      _expression = _expression + text;
    });
  }

  void allClear(String text) {
    setState(() {
      _history = "";
      _expression = "";
    });
  }

  void clear(String text) {
    setState(() {
      _expression = "";
    });
  }

  void calculate(String text) {
    Parser parser = Parser();
    Expression completeExpression = parser.parse(_expression);
    ContextModel contextModel = ContextModel();

    double evaluation =
        completeExpression.evaluate(EvaluationType.REAL, contextModel);

    setState(() {
      _history = _expression;
      _expression = '$evaluation';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: NumberDisplay(
            history: _history,
            expression: _expression,
          ),
          flex: 2,
        ),
        Expanded(
          child: SizedBox(),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButtons(
                numberOrSymbol: "AC",
                callBack: allClear,
                fontSize: 20,
              ),
              NumberButtons(
                numberOrSymbol: "C",
                callBack: clear,
              ),
              NumberButtons(
                numberOrSymbol: "%",
                callBack: numberPressed,
              ),
              NumberButtons(
                numberOrSymbol: "/",
                callBack: numberPressed,
                borderColor: CustomColors.deepBlue,
                symbolColor: CustomColors.deepBlue,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButtons(
                numberOrSymbol: "7",
                callBack: numberPressed,
              ),
              NumberButtons(
                numberOrSymbol: "8",
                callBack: numberPressed,
              ),
              NumberButtons(
                numberOrSymbol: "9",
                callBack: numberPressed,
              ),
              NumberButtons(
                numberOrSymbol: "*",
                callBack: numberPressed,
                borderColor: CustomColors.deepBlue,
                symbolColor: CustomColors.deepBlue,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButtons(
                numberOrSymbol: "4",
                callBack: numberPressed,
              ),
              NumberButtons(
                numberOrSymbol: "5",
                callBack: numberPressed,
              ),
              NumberButtons(
                numberOrSymbol: "6",
                callBack: numberPressed,
              ),
              NumberButtons(
                numberOrSymbol: "-",
                callBack: numberPressed,
                borderColor: CustomColors.deepBlue,
                symbolColor: CustomColors.deepBlue,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButtons(
                numberOrSymbol: "1",
                callBack: numberPressed,
              ),
              NumberButtons(
                numberOrSymbol: "2",
                callBack: numberPressed,
              ),
              NumberButtons(
                numberOrSymbol: "3",
                callBack: numberPressed,
              ),
              NumberButtons(
                numberOrSymbol: "+",
                callBack: numberPressed,
                borderColor: CustomColors.deepBlue,
                symbolColor: CustomColors.deepBlue,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButtons(
                numberOrSymbol: "0",
                callBack: numberPressed,
                flex: 2,
              ),
              NumberButtons(
                flex: 1,
                numberOrSymbol: ".",
                callBack: numberPressed,
              ),
              NumberButtons(
                flex: 1,
                numberOrSymbol: "=",
                callBack: calculate,
                borderColor: CustomColors.smoothWhite,
                symbolColor: CustomColors.smoothWhite,
                buttonColor: CustomColors.deepBlue,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        )
      ],
    );
  }
}
