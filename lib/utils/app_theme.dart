import 'package:flutter/material.dart';
import 'package:oonzoo/utils/extensions.dart';

class AppTheme {
  AppTheme._();

  static const primaryColorLight = Colors.black;
  static const lightPink = Color(0xFFC64295);
  static const secondaryColorLight = Color(0xff1A1A1A);
  static const secondaryColorLight2 = Color(0xffBC76BB);
  static const secondaryColorLight3 = Color(0xffB3AC6C);
  static const secondaryColorLight4 = Color(0xffFFF3FA);
  static const secondaryColorLight5 = Color(0xfffceaf5);
  static const baseColor = Color(0xfF000000);
  static const baseColor2 = Color(0xfF202020);

  static const greenColor = Color(0xff78B000);

  static const greyColorLight = Color(0xff333333);
  static const greyColorLight2 = Color(0xff4d4d4d);
  static const greyColorLight3 = Color(0xff808080);
  static const greyColorLight4 = Color(0xffcccccc);
  static const greyColorLight5 = Color(0xff36343B);
  static const greyColorLight6 = Color(0xff1A1A1A);

  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryColorLight,
    // fontFamily: 'Metropolis',

    scaffoldBackgroundColor: Colors.white,
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: Colors.white, surfaceTintColor: Colors.white),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.white, scrolledUnderElevation: 0),
    datePickerTheme:
        const DatePickerThemeData(backgroundColor: Colors.white, surfaceTintColor: Colors.white),
    dialogTheme: const DialogTheme(backgroundColor: Colors.white, surfaceTintColor: Colors.white),
    dialogBackgroundColor: Colors.white,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: baseColor2, //<-- SEE HERE
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          BorderSide(color: Colors.black.withOpacity(0.5), width: 0.5),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
    primarySwatch: 0xff00000.toMaterialColor(),
    useMaterial3: true,
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    primaryColor: Colors.black,
    // fontFamily: 'Metropolis',

    scaffoldBackgroundColor: Colors.white,
    hintColor: Colors.black,
    primaryColorDark: Colors.black,
    appBarTheme: const AppBarTheme(
        // centerTitle: false,
        backgroundColor: Colors.black),
    //  appBarTheme: const AppBarTheme(backgroundColor: Colors.white, scrolledUnderElevation: 0),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: secondaryColorLight,
      filled: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      hintStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Color(0xffcccccc),
        height: 24 / 16,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: Color(0xff1A1A1A),
        ),
      ),
    ),
  );

  static final btnStyle1 = ElevatedButton.styleFrom(
      backgroundColor: primaryColorLight,
      foregroundColor: Colors.white,
      textStyle: const TextStyle(
        fontSize: 14,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        // fontFamily: 'Metropolis',
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.all(8));

  static final btnStyle2 = ElevatedButton.styleFrom(
      backgroundColor: secondaryColorLight,
      // foregroundColor: primaryColorLight,
      textStyle: const TextStyle(
        fontSize: 22,
        color: primaryColorLight,
        fontWeight: FontWeight.w600,
        // fontFamily: 'Metropolis',
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16));

  static final btnStyle3 = ElevatedButton.styleFrom(
      backgroundColor: primaryColorLight,
      foregroundColor: Colors.black,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black,
        fontWeight: FontWeight.w600,
        // fontFamily: 'Metropolis',
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16));

  static final btnStyle4 = ElevatedButton.styleFrom(
      backgroundColor: secondaryColorLight,
      // foregroundColor: primaryColorLight,
      textStyle: const TextStyle(
        fontSize: 18,
        color: primaryColorLight,
        fontWeight: FontWeight.w600,
        // fontFamily: 'Metropolis',
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 30));

  static final btnStyle5 = ElevatedButton.styleFrom(
      backgroundColor: primaryColorLight,
      foregroundColor: Colors.black,
      textStyle: const TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.w600,
        // fontFamily: 'Metropolis',
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 30));

  static const title = TextStyle(
    fontSize: 22,
    // fontFamily: 'Metropolis',
    // fontWeight: FontWeight.w600,
    // color: Color(0xff000000),
    height: 28 / 22,
  );

  static const title2 = TextStyle(
    fontSize: 18,
    // fontFamily: 'Metropolis',
  );

  static const label = TextStyle(
    // fontFamily: "Metropolis",
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Color(0xffcccccc),
    height: 24 / 16,
  );

  static const InputBorder border = UnderlineInputBorder(
    borderSide: BorderSide(width: 1, color: Color(0xffCCCCCC)),
  );

  static const InputBorder border2 = UnderlineInputBorder(
    borderSide: BorderSide.none,
  );

  // static final oleoHeadingFont = GoogleFonts.oleoScript(textStyle: TextStyle());

  static final inputDecorationBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey.shade300,
      ),
      borderRadius: BorderRadius.circular(12));

  static const defaultIconSize = 18;
}
