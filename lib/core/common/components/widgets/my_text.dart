import 'package:flutter/material.dart';
import 'package:actvex/core/resources/text/styles_manager.dart';

import '../../../resources/theme/app_theme.dart';

enum TextStyleEnum {
  poppinsLight,
  poppinsBold,
  poppinsMedium,
  poppinsRegualr,
  poppinsSemiBold,
  latoLight,
  latoRegualr,
  latoBold,
}

/// A widget that displays a text with a specific style and properties.
///
/// The [MyText] widget displays a string of text with a specified style.
/// The text can be aligned, wrapped, and set to a maximum number of lines. It can also be customized
/// with properties such as color, font size, font weight, and letter spacing.
///
/// If a [textStyle] is provided, the text will use the style as defined by the [TextStyle] object.
/// If not, the text will use the default text style defined by the nearest [Theme] ancestor.
///
/// If you want to create a text widget that has a different font or color, you can specify it
/// by providing a [TextStyleEnum] value for the [textStyle] property.
///
/// The [textAlign] property determines how the text should be aligned horizontally within its container.
/// The [maxLines] property specifies the maximum number of lines to display, while [overflow] property
/// determines how to handle text overflow.
///
/// The [color], [fontSize], [fontWeight], and [letterSpacing] properties allow you
/// to customize the text's appearance.
///
/// See also:
///
/// * [Text], which displays a run of text with a single style.
/// * [TextStyle], which is used to define the appearance of text.
/// * [TextStyleEnum], an enum used to define preset text styles.
class MyText extends StatelessWidget {
  const MyText(
    this.text, {
    super.key,
    required this.textStyle,
    this.textAlign,
    this.maxLines,
    this.color = Colors.black,
    this.height,
    required this.fontSize,
    this.fontWeight,
    this.letterSpacing,
    this.overflow,
    this.scale,
    this.textDecoration,
    this.textScale = false,
    this.textGradient = false,
  });

  /// The text to display.
  final String text;

  final TextDecoration? textDecoration;

  /// The text style to use. If not specified, it uses the default text style from the nearest [Theme] ancestor.
  final TextStyleEnum? textStyle;

  /// How the text should be aligned horizontally.
  final TextAlign? textAlign;

  /// The maximum number of lines to display.
  final int? maxLines;

  /// The color to use when painting the text.
  final Color color;

  /// The line height of the text. If null, will be calculated automatically based on the font size.
  final double? height;

  /// The font size to use when painting the text.
  final double fontSize;

  /// The weight of the font to use when painting the text.
  final FontWeight? fontWeight;

  /// The amount of space to add between each letter.
  final double? letterSpacing;

  /// How to handle text overflow.
  final TextOverflow? overflow;

  final double? scale;

  final bool textScale;
  final bool textGradient;

  @override
  Widget build(BuildContext context) {
    final style = _buildStyle(context).copyWith(decoration: textDecoration);

    Widget widget = Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      style: style,
    );

    if (textScale) {
      widget = _MyTextScale(
        scale: scale ?? 1,
        child: widget,
      );
    }

    if (textGradient) {
      widget = _MyTextGradient(child: widget);
    }

    return widget;
  }

  TextStyle _buildStyle(BuildContext context) {
    final theme = AppTheme.of(context);
    TextStyle extraBoldyStyle(FontFamilies fontFamily) =>
        getExtraBoldStyle(color: color, fontSize: fontSize, family: fontFamily);

    TextStyle boldyStyle(FontFamilies fontFamily) =>
        getBoldStyle(color: color, fontSize: fontSize, family: fontFamily);

    TextStyle semiBoldStyle(FontFamilies fontFamily) =>
        getSemiBoldStyle(color: color, fontSize: fontSize, family: fontFamily);

    TextStyle mediumStyle(FontFamilies fontFamily) =>
        getMediumStyle(color: color, fontSize: fontSize, family: fontFamily);

    TextStyle regularStyle(FontFamilies fontFamily) =>
        getRegularStyle(color: color, fontSize: fontSize, family: fontFamily);

    TextStyle lightStyle(FontFamilies fontFamily) =>
        getLightStyle(color: color, fontSize: fontSize, family: fontFamily);

    return switch (textStyle) {
      TextStyleEnum.poppinsBold => boldyStyle(FontFamilies.Blinker),
      TextStyleEnum.poppinsSemiBold => semiBoldStyle(FontFamilies.Blinker),
      TextStyleEnum.poppinsMedium => mediumStyle(FontFamilies.Blinker),
      TextStyleEnum.poppinsRegualr => regularStyle(FontFamilies.Blinker),
      TextStyleEnum.poppinsLight => lightStyle(FontFamilies.Blinker),
      TextStyleEnum.latoLight => lightStyle(FontFamilies.Blinker),
      TextStyleEnum.latoRegualr => regularStyle(FontFamilies.Blinker),
      TextStyleEnum.latoBold => boldyStyle(FontFamilies.Blinker),
      null => Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            letterSpacing: letterSpacing,
            height: height,
            fontFamily: theme.textStyle.fontFamily,
          )
    };
  }
}

class _MyTextScale extends StatelessWidget {
  const _MyTextScale({
    required this.scale,
    required this.child,
  });

  final double scale;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: scale),
      child: child,
    );
  }
}

class _MyTextGradient extends StatelessWidget {
  const _MyTextGradient({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => LinearGradient(colors: [
        Theme.of(context).colorScheme.primary,
        Theme.of(context).colorScheme.secondary,
      ]).createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: child,
    );
  }
}
