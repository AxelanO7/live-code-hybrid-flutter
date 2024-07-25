import 'package:live_code/src/core/base_import.dart';

class ColorStyle {
  static Color get whiteColor => HexColor('FFFFFF');
  static Color get blackColor => HexColor('1A1A1A');

  static Color get primaryColor => CustomTheme.lightScheme().primary;
  static Color get secondaryColor => CustomTheme.lightScheme().secondary;
  static Color get tertiaryColor => CustomTheme.lightScheme().tertiary;
  static Color get surfaceColor => CustomTheme.lightScheme().surface;
  static Color get errorColor => CustomTheme.lightScheme().error;
  static Color get onPrimaryColor => CustomTheme.lightScheme().onPrimary;
  static Color get onSecondaryColor => CustomTheme.lightScheme().onSecondary;
  static Color get onTertiaryColor => CustomTheme.lightScheme().onTertiary;
  static Color get onSurfaceColor => CustomTheme.lightScheme().onSurface;
  static Color get onErrorColor => CustomTheme.lightScheme().onError;
  static Color get primaryContainerColor => CustomTheme.lightScheme().primaryContainer;
  static Color get secondaryContainerColor => CustomTheme.lightScheme().secondaryContainer;
  static Color get tertiaryContainerColor => CustomTheme.lightScheme().tertiaryContainer;
  static Color get surfaceContainerColor => CustomTheme.lightScheme().surfaceContainer;
  static Color get errorContainerColor => CustomTheme.lightScheme().errorContainer;
  static Color get onPrimaryContainerColor => CustomTheme.lightScheme().onPrimaryContainer;
  static Color get onSecondaryContainerColor => CustomTheme.lightScheme().onSecondaryContainer;
  static Color get onTertiaryContainerColor => CustomTheme.lightScheme().onTertiaryContainer;
  static Color get surfaceContainerHighestColor => CustomTheme.lightScheme().surfaceContainerHighest;
  static Color get surfaceContainerHighColor => CustomTheme.lightScheme().surfaceContainerHigh;
  static Color get surfaceContainerLowColor => CustomTheme.lightScheme().surfaceContainerLow;
  static Color get surfaceContainerLowestColor => CustomTheme.lightScheme().surfaceContainerLowest;
}
