import 'package:flutter/material.dart';
import 'theme.dart';

final _materialTheme = ThemeData();

class LightThemeColors {
  static const materialPrimary = Color(0xFF3F90FF);
  static const materialSecondary = Color(0xFFD561ED);

  static const success = Color(0xFF26DA72);
  static const error = Color(0xFFFF4747);
  static const warning = Color(0xFFFFCA00);
  static const info = Color(0xFF4075FF);

  static const background = Colors.white;

  static const greyscale = LightGrayscaleColor(0xFF101828, {
    95: Color(0xFF1D2533),
    90: Color(0xFF272F3D),
    80: Color(0xFF3D4555),
    60: Color(0xFF797E8B),
    40: Color(0xFFB5B7C0),
    20: Color(0xFFD3D4DB),
    10: Color(0xFFE8E8EE),
    5: Color(0xFFF4F4F5),
    0: Color(0xFFFFFFFF),
  });

  static final transparent = LightTransparentColor(0x00FFFFFF, {
    100: const Color(0x00ffffff).withOpacity(0.9),
    75: const Color(0x00ffffff).withOpacity(0.6),
    50: const Color(0x00ffffff).withOpacity(0.4),
    25: const Color(0x00ffffff).withOpacity(0.25),
    10: const Color(0x00ffffff).withOpacity(0.1),
    5: const Color(0x00ffffff).withOpacity(0.06),
    3: const Color(0x00ffffff).withOpacity(0.03),
  });

  LightThemeColors._();
}

class LightGrayscaleColor extends ColorSwatch {
  const LightGrayscaleColor(int primary, Map<dynamic, Color> swatch) : super(primary, swatch);

  get black => this;

  get shade95 => this[95];

  get shade90 => this[90];

  get shade80 => this[80];

  get shade60 => this[60];

  get shade40 => this[40];

  get shade20 => this[20];

  get shade10 => this[10];

  get shade5 => this[5];

  get white => this[0];
}

class LightTransparentColor extends ColorSwatch {
  const LightTransparentColor(int primary, Map<dynamic, Color> swatch) : super(primary, swatch);

  get full => this[100];

  get shade75 => this[75];

  get shade50 => this[50];

  get shade25 => this[25];

  get shade10 => this[10];

  get shade5 => this[5];

  get shade3 => this[3];
}

class LightTextStyles {
  static final displayLarge = _materialTheme.textTheme.displayLarge?.copyWith(
    color: Colors.black,
    fontWeight: FontWeight.w900,
    fontSize: 34,
  );

  static final displayMedium = _materialTheme.textTheme.displayMedium?.copyWith(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    fontSize: 24,
  );

  static final displaySmall = _materialTheme.textTheme.displaySmall?.copyWith(
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontSize: 20,
  );

  static final bodyLarge = _materialTheme.textTheme.bodyLarge?.copyWith(
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 24,
  );

  static final bodyMedium = _materialTheme.textTheme.bodyMedium?.copyWith(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 20,
  );

  static final bodySmall = _materialTheme.textTheme.bodySmall?.copyWith(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );

  static final labelLarge = _materialTheme.textTheme.labelLarge?.copyWith(
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );

  static final labelMedium = _materialTheme.textTheme.labelMedium?.copyWith(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static final labelSmall = _materialTheme.textTheme.labelSmall?.copyWith(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );
}

final customLightTheme = CustomTheme(
  sidebarTheme: SidebarTheme(
    unselectedTextColor: LightThemeColors.greyscale.shade80,
    unselectedIconColor: LightThemeColors.greyscale.shade80,
    selectedIconBox: LightThemeColors.greyscale.shade5,
    selectedTextColor: LightThemeColors.greyscale.shade80,
    backgroundColor: LightThemeColors.background,
  ),
  toastTheme: ToastTheme(
    success: LightThemeColors.success,
    error: LightThemeColors.error,
    warning: LightThemeColors.warning,
    info: LightThemeColors.info,
  ),
  statusLabelTheme: StatusLabelTheme(
    active: const Color(0xBB046729),
    failed: const Color(0xFFc21807),
    progress: const Color(0xFFFFBD00),
  ),
  attributeLabelStyle: LightTextStyles.bodyMedium!.copyWith(color: LightThemeColors.materialPrimary),
  primaryButtonLabelStyle: LightTextStyles.labelLarge!.copyWith(color: LightThemeColors.materialPrimary),
  secondaryButtonLabelStyle: LightTextStyles.labelLarge!.copyWith(color: LightThemeColors.materialSecondary),
  attentionButtonSize: const Size(150, 50),
);


// @formatter:off
final materialLightTheme = _materialTheme.copyWith(
    extensions: [customLightTheme.apply(fontFamily: interFont)],
    floatingActionButtonTheme: _materialTheme.floatingActionButtonTheme.copyWith(
      backgroundColor: LightThemeColors.materialPrimary,
      foregroundColor: LightThemeColors.background,
      elevation: 4,
    ),
    canvasColor: LightThemeColors.background,
    hoverColor: LightThemeColors.greyscale.shade10,
    highlightColor: LightThemeColors.greyscale.shade20,
    iconTheme: const IconThemeData(color: LightThemeColors.materialPrimary, size: defaultIconSize),
    dividerTheme: _materialTheme.dividerTheme.copyWith(color: LightThemeColors.greyscale.shade40, thickness: dividerThickness),
    dialogTheme: _materialTheme.dialogTheme.copyWith(elevation: 4, shape: RoundedRectangleBorder(borderRadius: strongBorder)),
    toggleableActiveColor: LightThemeColors.materialPrimary,
    chipTheme: _materialTheme.chipTheme.copyWith(
      backgroundColor: LightThemeColors.background,
      shape: RoundedRectangleBorder(borderRadius: strongBorder, side: const BorderSide(color: LightThemeColors.materialPrimary)),
    ),
    colorScheme: _materialTheme.colorScheme.copyWith(
      primary: LightThemeColors.materialPrimary,
      secondary: LightThemeColors.materialSecondary,
      background: LightThemeColors.background,
      error: LightThemeColors.error,
    ),
    switchTheme: _materialTheme.switchTheme.copyWith(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      splashRadius: 15,
    ),
    cardColor: LightThemeColors.background,
    cardTheme: _materialTheme.cardTheme.copyWith(elevation: 2, shape: RoundedRectangleBorder(borderRadius: strongBorder)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          foregroundColor: LightThemeColors.greyscale.shade40,
          backgroundColor: LightThemeColors.background,
          shape: RoundedRectangleBorder(borderRadius: strongBorder),
          padding: const EdgeInsets.all(Spacings.large),
          elevation: 3),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(Spacings.large),
          backgroundColor: LightThemeColors.background,
          foregroundColor: LightThemeColors.greyscale.shade40,
          side: const BorderSide(color: LightThemeColors.materialPrimary),
          shape: ContinuousRectangleBorder(borderRadius: strongBorder),
          elevation: 3),
    ),
    inputDecorationTheme: _materialTheme.inputDecorationTheme.copyWith(
        focusedBorder: UnderlineInputBorder(
          borderRadius: mediumBorder,
          borderSide: const BorderSide(color: LightThemeColors.materialPrimary),
        ),
        enabledBorder: UnderlineInputBorder(
          borderRadius: mediumBorder,
          borderSide: const BorderSide(color: LightThemeColors.materialPrimary),
        ),
        disabledBorder: UnderlineInputBorder(
          borderRadius: mediumBorder,
          borderSide: const BorderSide(color: LightThemeColors.materialPrimary),
        )),
    checkboxTheme: _materialTheme.checkboxTheme.copyWith(
      splashRadius: splashRadius,
      shape: RoundedRectangleBorder(borderRadius: weakBorder),
    ),
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    scaffoldBackgroundColor: LightThemeColors.background,
    backgroundColor: LightThemeColors.background,
    pageTransitionsTheme: NoTransitions(),
    progressIndicatorTheme: const ProgressIndicatorThemeData(color: LightThemeColors.materialSecondary),
    splashColor: LightThemeColors.transparent,
    textTheme: _materialTheme.textTheme
        .copyWith(
            displayLarge: LightTextStyles.displayLarge,
            displayMedium: LightTextStyles.displayMedium,
            displaySmall: LightTextStyles.displaySmall,
            bodyLarge: LightTextStyles.bodyLarge,
            bodyMedium: LightTextStyles.bodyMedium,
            bodySmall: LightTextStyles.bodySmall,
            labelLarge: LightTextStyles.labelLarge,
            labelMedium: LightTextStyles.labelMedium,
            labelSmall: LightTextStyles.labelSmall,
            headlineLarge: LightTextStyles.displayLarge,
            headlineMedium: LightTextStyles.displayMedium,
            headlineSmall: LightTextStyles.displaySmall,
            titleLarge: LightTextStyles.labelLarge,
            titleMedium: LightTextStyles.labelMedium,
            titleSmall: LightTextStyles.labelSmall)
        .apply(fontFamily: interFont));
// @formatter:on
