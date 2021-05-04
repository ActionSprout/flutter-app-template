import 'package:flutter/material.dart';

const cardBorderRadius = BorderRadius.all(Radius.circular(20));
const fullScreenDialogBorderRadius = BorderRadius.all(Radius.circular(30));

const fullScreenDialogBorder = RoundedRectangleBorder(
  borderRadius: fullScreenDialogBorderRadius,
);

const cardBorder = RoundedRectangleBorder(
  borderRadius: cardBorderRadius,
);

class TemplateTheme {
  /// A complete [ThemeData] instance to be plugged into the top-level
  /// [MaterialApp].
  static ThemeData get themeData => ThemeData(
        appBarTheme: _appBarTheme,
        brightness: Brightness.light,
        buttonBarTheme: _buttonBarTheme,
        buttonTheme: _buttonTheme,
        cardTheme: _cardTheme,
        colorScheme: _colorScheme,
        inputDecorationTheme: _inputDecorationTheme,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        primarySwatch: _primarySwatch,
        tabBarTheme: _tabBarTheme,
        textTheme: _textTheme,
      );

  static AppBarTheme get _appBarTheme => const AppBarTheme(
        brightness: Brightness.light,
        color: Color(0xffffffff),
        iconTheme: IconThemeData(
          color: Color(0xff3d3c3d),
        ),
        textTheme: TextTheme(
          title: TextStyle(
            color: Color(0xff3d3c3d),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      );

  static ButtonBarThemeData get _buttonBarTheme => const ButtonBarThemeData(
        layoutBehavior: ButtonBarLayoutBehavior.constrained,
      );

  static ButtonThemeData get _buttonTheme => ButtonThemeData(
        buttonColor: _colorScheme.secondary,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: EdgeInsets.zero,
      );

  static CardTheme get _cardTheme => CardTheme(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 5,
        margin: EdgeInsets.zero,
        shape: cardBorder,
      );

  static final _colorScheme = ColorScheme(
    background: const Color(0xfff4f4f4),
    brightness: Brightness.light,
    // If you update this, you probably want to update
    // `pubspec.yaml:flutter_icons.adaptive_icon_background` as well.
    primary: _primarySwatch.shade500,
    error: const Color(0xffc80000),
    onBackground: const Color(0xff1d1d1d),
    onError: const Color(0xffffffff),
    onPrimary: const Color(0xffffffff),
    onSecondary: const Color(0xffffffff),
    onSurface: const Color(0xff3d3c3d),
    primaryVariant: _primarySwatch.shade700,
    secondary: const Color(0xffd44f27),
    secondaryVariant: const Color(0xffad3925),
    surface: const Color(0xffffffff),
  );

  static InputDecorationTheme get _inputDecorationTheme =>
      const InputDecorationTheme(
        isCollapsed: true,
        isDense: true,
      );

  static const _primarySwatch = MaterialColor(0xfff48500, <int, Color>{
    50: Color(0xfffff1e7),
    100: Color(0xffffc9a3),
    200: Color(0xffffac74),
    300: Color(0xffff9242),
    400: Color(0xffff8327),
    500: Color(0xffe97723),
    600: Color(0xffcf651a),
    700: Color(0xffb05311),
    800: Color(0xff803c0c),
    900: Color(0xff3e1f09),
  });

  // Our text theme attempts to reflect the current Material framework
  // for text. Names are disambiguated by an accompanying comment.
  static TextTheme get _textTheme => const TextTheme(
        // H1 Headline
        display4: TextStyle(
          fontSize: 96,
        ),
        // H2 Headline
        display3: TextStyle(
          fontSize: 60,
          fontWeight: FontWeight.bold,
        ),
        // H3 Headline
        display2: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.bold,
        ),
        // H4 Headline
        display1: TextStyle(
          fontSize: 34,
        ),
        // H5 Headline
        headline: TextStyle(
          fontSize: 24,
        ),
        // H6 Headline
        subhead: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        // Subtitle 1
        title: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        // Subtitle 2
        subtitle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        body1: TextStyle(
          fontSize: 16,
        ),
        // Body 1, bolded (no Body 2)
        // Decided to preserve the existing meaning difference for
        // Flutter here.
        body2: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        button: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          // Should also be IN CAPS.
        ),
        caption: TextStyle(
          fontSize: 12,
        ),
        overline: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.25,
          // Should also be IN CAPS.
        ),
      );

  static TabBarTheme get _tabBarTheme => TabBarTheme(
        indicator: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: _primarySwatch,
              width: 2,
            ),
          ),
        ),
        labelColor: _primarySwatch,
        unselectedLabelColor: Colors.black38,
      );
}
