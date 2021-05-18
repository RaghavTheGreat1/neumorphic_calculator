import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

class NumberDisplay extends StatelessWidget {
  final String expression;
  final String history;

  NumberDisplay({
    @required this.expression,
    @required this.history,
  });

  @override
  Widget build(BuildContext context) {
    final theme = NeumorphicTheme.currentTheme(context);

    return Neumorphic(
      style: NeumorphicStyle(
        boxShape: NeumorphicBoxShape.roundRect(
          BorderRadius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          width: double.infinity,
          height: 125,
          decoration: BoxDecoration(
            border: Border.all(color: theme.borderColor, width: 1.5),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  bottom: 10,
                ),
                child: Text(
                  history,
                  style:
                      GoogleFonts.orbitron(fontSize: 15, color: Colors.black38),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  bottom: 15,
                  top: 5,
                ),
                child: Text(
                  expression,
                  style: GoogleFonts.orbitron(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
