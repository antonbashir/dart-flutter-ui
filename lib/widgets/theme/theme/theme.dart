import 'package:flutter/material.dart';

class SidebarTheme {
  final Color unselectedTextColor;
  final Color unselectedIconColor;
  final Color selectedIconBox;
  final Color selectedTextColor;
  final Color backgroundColor;

  SidebarTheme({
    required this.unselectedTextColor,
    required this.unselectedIconColor,
    required this.selectedIconBox,
    required this.selectedTextColor,
    required this.backgroundColor,
  });

  static SidebarTheme? of(BuildContext context) => Theme.of(context).custom()?.sidebarTheme;
}

class ToastTheme {
  final Color success;
  final Color error;
  final Color warning;
  final Color info;

  ToastTheme({
    required this.success,
    required this.error,
    required this.warning,
    required this.info,
  });

  static ToastTheme? of(BuildContext context) => Theme.of(context).custom()?.toastTheme;
}

class StatusLabelTheme {
  final Color active;
  final Color progress;
  final Color failed;

  StatusLabelTheme({
    required this.active,
    required this.progress,
    required this.failed,
  });

  static StatusLabelTheme? of(BuildContext context) => Theme.of(context).custom()?.statusLabelTheme;
}

class CustomTheme extends ThemeExtension<CustomTheme> {
  final SidebarTheme sidebarTheme;
  final ToastTheme toastTheme;
  final StatusLabelTheme statusLabelTheme;
  final TextStyle attributeLabelStyle;
  final TextStyle primaryButtonLabelStyle;
  final TextStyle secondaryButtonLabelStyle;
  final Size attentionButtonSize;

  CustomTheme({
    required this.sidebarTheme,
    required this.toastTheme,
    required this.statusLabelTheme,
    required this.primaryButtonLabelStyle,
    required this.secondaryButtonLabelStyle,
    required this.attributeLabelStyle,
    required this.attentionButtonSize,
  });

  static CustomTheme? of(BuildContext context) => Theme.of(context).custom();

  @override
  CustomTheme copyWith(
          {SidebarTheme? sidebarTheme,
          ToastTheme? toastTheme,
          StatusLabelTheme? statusLabelTheme,
          TextStyle? attributeLabelStyle,
          TextStyle? primaryButtonLabelStyle,
          TextStyle? secondaryButtonLabelStyle,
          Size? attentionButtonSize}) =>
      CustomTheme(
        sidebarTheme: sidebarTheme ?? this.sidebarTheme,
        toastTheme: toastTheme ?? this.toastTheme,
        statusLabelTheme: statusLabelTheme ?? this.statusLabelTheme,
        attributeLabelStyle: attributeLabelStyle ?? this.attributeLabelStyle,
        primaryButtonLabelStyle: primaryButtonLabelStyle ?? this.primaryButtonLabelStyle,
        secondaryButtonLabelStyle: secondaryButtonLabelStyle ?? this.secondaryButtonLabelStyle,
        attentionButtonSize: attentionButtonSize ?? this.attentionButtonSize,
      );

  CustomTheme apply({String? fontFamily}) => copyWith(
      attributeLabelStyle: attributeLabelStyle.apply(fontFamily: fontFamily),
      primaryButtonLabelStyle: primaryButtonLabelStyle.apply(fontFamily: fontFamily),
      secondaryButtonLabelStyle: secondaryButtonLabelStyle.apply(fontFamily: fontFamily));

  @override
  ThemeExtension<CustomTheme> lerp(ThemeExtension<CustomTheme>? other, double t) => this;
}

extension ThemeDataExtensions on ThemeData {
  CustomTheme? custom() => extension();
}

const interFont = "Inter";

const toastWidth = 300.0;
const toastMaxLines = 3;
const toastPosition = 24.0;

const dividerThickness = 0.3;

const splashRadius = 20.0;

const progressStrokeWidth = 1.0;

const sidebarIconSize = 40.0;
const sidebarAvatarSize = 45.0;

const defaultIconSize = 24.0;

const cardAttributeNameWidth = 150.0;

const autoCompleteHighlightAlignment = 0.5;

const autoCompleteAvailableHight = 350.0;

const colorPickerAreaHeightPercent = 0.7;

class Spacings {
  static const extraSmall = 2.0;
  static const small = 4.0;
  static const medium = 8.0;
  static const large = 16.0;
  static const extraLarge = 24.0;
}

class Borders {
  static const cornerWeak = 3.0;
  static const cornerMedium = 8.0;
  static const cornerStrong = 12.0;
}

final weakBorder = BorderRadius.circular(Borders.cornerWeak);
final mediumBorder = BorderRadius.circular(Borders.cornerMedium);
final strongBorder = BorderRadius.circular(Borders.cornerStrong);

class NoTransitions extends PageTransitionsTheme {
  @override
  Widget buildTransitions<T>(
    route,
    context,
    animation,
    secondaryAnimation,
    child,
  ) =>
      child;
}
