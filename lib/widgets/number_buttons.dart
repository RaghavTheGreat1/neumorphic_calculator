import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_calculator/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class NumberButtons extends StatelessWidget {
  final String numberOrSymbol;
  final Color borderColor;
  final Color symbolColor;
  final Color buttonColor;
  final int flex;
  final double fontSize;
  final Function callBack;

  NumberButtons({
    this.numberOrSymbol = "\$",
    this.borderColor = CustomColors.smoothWhite,
    this.symbolColor = Colors.black,
    this.buttonColor = CustomColors.smoothWhite,
    this.flex = 1,
    this.fontSize = 30,
    this.callBack,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: NeumorphicButton(
          minDistance: -5,
          provideHapticFeedback: false,
          duration: Duration(
            microseconds: 50,
          ),
          style: NeumorphicStyle(
            color: buttonColor,
            border: NeumorphicBorder(
              width: 1.2,
              color: borderColor,
            ),
            boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(15),
            ),
          ),
          onPressed: () {
            callBack(numberOrSymbol);
          },
          child: Center(
            child: Text(
              numberOrSymbol,
              textAlign: TextAlign.center,
              style: GoogleFonts.orbitron(
                fontSize: fontSize,
                color: symbolColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
