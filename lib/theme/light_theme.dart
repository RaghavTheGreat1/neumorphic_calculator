import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neumorphic_calculator/theme/colors.dart';

NeumorphicThemeData lightTheme() {
  return NeumorphicThemeData(
    
    baseColor: CustomColors.smoothWhite,
    lightSource: LightSource.topLeft,
    depth: 10,
    borderColor: CustomColors.deepBlue,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    textTheme: TextTheme(
      headline4: GoogleFonts.orbitron(
        fontSize: 30,
        color: Colors.black,
      ),
    ),
  );
}
