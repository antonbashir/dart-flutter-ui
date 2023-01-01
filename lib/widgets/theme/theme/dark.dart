import 'package:flutter/material.dart';
import 'theme.dart';

final _materialTheme = ThemeData.dark();

class DarkGrayscaleColor extends ColorSwatch {
  const DarkGrayscaleColor(int primary, Map<dynamic, Color> swatch) : super(primary, swatch);

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

class DarkThemeColors {
  static const materialPrimary = Color(0xFF3F90FF);
  static const materialSecondary = Color(0xFFD561ED);

  static const success = Color(0xFF26DA72);
  static const error = Color(0xFFFF4747);
  static const warning = Color(0xFFFFCA00);
  static const info = Color(0xFF4075FF);

  static const greyscale = DarkGrayscaleColor(0xFF101828, {
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

  static final background = DarkThemeColors.greyscale.shade95;

  static final transparent = DarkTransparentColor(0xFF1D2533, {
    100: const Color(0xFF1D2533).withOpacity(0.9),
    90: const Color(0xFF1D2533).withOpacity(0.8),
    75: const Color(0xFF1D2533).withOpacity(0.6),
    50: const Color(0xFF1D2533).withOpacity(0.4),
    25: const Color(0xFF1D2533).withOpacity(0.25),
    15: const Color(0xFF1D2533).withOpacity(0.15),
    10: const Color(0xFF1D2533).withOpacity(0.1),
    5: const Color(0xFF1D2533).withOpacity(0.06),
    3: const Color(0xFF1D2533).withOpacity(0.03),
  });

  DarkThemeColors._();
}

class DarkTransparentColor extends ColorSwatch {
  const DarkTransparentColor(int primary, Map<dynamic, Color> swatch) : super(primary, swatch);

  get full => this[100];

  get shade90 => this[90];

  get shade75 => this[75];

  get shade50 => this[50];

  get shade25 => this[25];

  get shade15 => this[15];

  get shade10 => this[10];

  get shade5 => this[5];

  get shade3 => this[3];
}

class DarkTextStyles {
  static final displayLarge = _materialTheme.textTheme.displayLarge?.copyWith(
    color: DarkThemeColors.greyscale.shade10,
    fontWeight: FontWeight.w900,
    fontSize: 34,
  );

  static final displayMedium = _materialTheme.textTheme.displayMedium?.copyWith(
    color: DarkThemeColors.greyscale.shade10,
    fontWeight: FontWeight.w800,
    fontSize: 24,
  );

  static final displaySmall = _materialTheme.textTheme.displaySmall?.copyWith(
    color: DarkThemeColors.greyscale.shade10,
    fontWeight: FontWeight.w700,
    fontSize: 20,
  );

  static final bodyLarge = _materialTheme.textTheme.bodyLarge?.copyWith(
    color: DarkThemeColors.greyscale.shade10,
    fontWeight: FontWeight.w600,
    fontSize: 24,
  );

  static final bodyMedium = _materialTheme.textTheme.bodyMedium?.copyWith(
    color: DarkThemeColors.greyscale.shade10,
    fontWeight: FontWeight.w500,
    fontSize: 20,
  );

  static final bodySmall = _materialTheme.textTheme.bodySmall?.copyWith(
    color: DarkThemeColors.greyscale.shade10,
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );

  static final labelLarge = _materialTheme.textTheme.labelLarge?.copyWith(
    color: DarkThemeColors.greyscale.shade10,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );

  static final labelMedium = _materialTheme.textTheme.labelMedium?.copyWith(
    color: DarkThemeColors.greyscale.shade10,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static final labelSmall = _materialTheme.textTheme.labelSmall?.copyWith(
    color: DarkThemeColors.greyscale.shade10,
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );
}

final customDarkTheme = CustomTheme(
  sidebarTheme: SidebarTheme(
    unselectedTextColor: DarkThemeColors.greyscale.shade10,
    unselectedIconColor: DarkThemeColors.greyscale.shade80,
    selectedIconBox: DarkThemeColors.greyscale.shade80,
    selectedTextColor: DarkThemeColors.greyscale.shade10,
    backgroundColor: DarkThemeColors.greyscale.shade90,
  ),
  toastTheme: ToastTheme(
    success: DarkThemeColors.success,
    error: DarkThemeColors.error,
    warning: DarkThemeColors.warning,
    info: DarkThemeColors.info,
  ),
  statusLabelTheme: StatusLabelTheme(
    active: const Color.fromARGB(186, 7, 188, 74),
    failed: const Color(0xFFc21807),
    progress: const Color(0xFFFFBD00),
  ),
  attributeLabelStyle: DarkTextStyles.bodyMedium!.copyWith(color: DarkThemeColors.materialPrimary),
  primaryButtonLabelStyle: DarkTextStyles.labelLarge!.copyWith(color: DarkThemeColors.materialPrimary),
  secondaryButtonLabelStyle: DarkTextStyles.labelLarge!.copyWith(color: DarkThemeColors.materialSecondary),
  attentionButtonSize: const Size(150, 50),
);

// @formatter:off
final materialDarkTheme = _materialTheme.copyWith(
    extensions: [customDarkTheme.apply(fontFamily: interFont)],
    floatingActionButtonTheme: _materialTheme.floatingActionButtonTheme.copyWith(
      backgroundColor: DarkThemeColors.materialPrimary,
      foregroundColor: DarkThemeColors.greyscale.shade80,
      elevation: 5,
    ),
    canvasColor: DarkThemeColors.background,
    splashColor: DarkThemeColors.greyscale.shade80,
    iconTheme: const IconThemeData(color: DarkThemeColors.materialPrimary, size: defaultIconSize),
    dividerTheme: _materialTheme.dividerTheme.copyWith(color: DarkThemeColors.greyscale.shade40, thickness: dividerThickness),
    dialogTheme: _materialTheme.dialogTheme.copyWith(elevation: 5, shape: RoundedRectangleBorder(borderRadius: strongBorder)),
    toggleableActiveColor: DarkThemeColors.materialPrimary,
    chipTheme: _materialTheme.chipTheme.copyWith(
      backgroundColor: DarkThemeColors.background,
      shape: RoundedRectangleBorder(borderRadius: strongBorder, side: const BorderSide(color: DarkThemeColors.materialPrimary)),
    ),
    colorScheme: _materialTheme.colorScheme.copyWith(
      primary: DarkThemeColors.materialPrimary,
      secondary: DarkThemeColors.materialSecondary,
      background: DarkThemeColors.background,
      error: DarkThemeColors.error,
    ),
    cardTheme: _materialTheme.cardTheme.copyWith(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: strongBorder),
      color: DarkThemeColors.greyscale.shade90,
      shadowColor: DarkThemeColors.greyscale.shade40,
    ),
    switchTheme: _materialTheme.switchTheme.copyWith(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      splashRadius: 15,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: DarkThemeColors.greyscale.shade90,
          shadowColor: DarkThemeColors.greyscale.shade40,
          disabledBackgroundColor: DarkThemeColors.greyscale,
          shape: RoundedRectangleBorder(borderRadius: strongBorder),
          padding: const EdgeInsets.all(Spacings.large),
          elevation: 4),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(Spacings.large),
          backgroundColor: DarkThemeColors.greyscale.shade90,
          shadowColor: DarkThemeColors.greyscale.shade40,
          disabledBackgroundColor: DarkThemeColors.greyscale,
          side: const BorderSide(color: DarkThemeColors.materialPrimary),
          shape: ContinuousRectangleBorder(borderRadius: strongBorder),
          elevation: 4),
    ),
    inputDecorationTheme: _materialTheme.inputDecorationTheme.copyWith(
        focusedBorder: UnderlineInputBorder(
          borderRadius: mediumBorder,
          borderSide: const BorderSide(color: DarkThemeColors.materialPrimary),
        ),
        enabledBorder: UnderlineInputBorder(
          borderRadius: mediumBorder,
          borderSide: const BorderSide(color: DarkThemeColors.materialPrimary),
        ),
        disabledBorder: UnderlineInputBorder(
          borderRadius: mediumBorder,
          borderSide: const BorderSide(color: DarkThemeColors.materialPrimary),
        )),
    checkboxTheme: _materialTheme.checkboxTheme.copyWith(
      splashRadius: splashRadius,
      shape: RoundedRectangleBorder(borderRadius: weakBorder),
    ),
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    scaffoldBackgroundColor: DarkThemeColors.background,
    backgroundColor: DarkThemeColors.background,
    pageTransitionsTheme: NoTransitions(),
    progressIndicatorTheme: const ProgressIndicatorThemeData(color: DarkThemeColors.materialSecondary),
    textTheme: _materialTheme.textTheme
        .copyWith(
            displayLarge: DarkTextStyles.displayLarge,
            displayMedium: DarkTextStyles.displayMedium,
            displaySmall: DarkTextStyles.displaySmall,
            bodyLarge: DarkTextStyles.bodyLarge,
            bodyMedium: DarkTextStyles.bodyMedium,
            bodySmall: DarkTextStyles.bodySmall,
            labelLarge: DarkTextStyles.labelLarge,
            labelMedium: DarkTextStyles.labelMedium,
            labelSmall: DarkTextStyles.labelSmall,
            headlineLarge: DarkTextStyles.displayLarge,
            headlineMedium: DarkTextStyles.displayMedium,
            headlineSmall: DarkTextStyles.displaySmall,
            titleLarge: DarkTextStyles.labelLarge,
            titleMedium: DarkTextStyles.labelMedium,
            titleSmall: DarkTextStyles.labelSmall)
        .apply(fontFamily: interFont));
// @formatter:on
