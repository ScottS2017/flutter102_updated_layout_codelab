import 'package:flutter/material.dart';
import 'package:flutter_102_codelab_updated_2021/app/app_colors.dart';

class AppTheme {

    // Text Styles
    static const TextStyle appBarStyle = const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500, color: AppColors.customThemeAppBarTextColor);
    static const TextStyle boldStyle = const TextStyle(fontWeight: FontWeight.bold);
    static const TextStyle titleStyle = const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500);
    static const TextStyle title16Style = const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500);
    static const TextStyle font18_black54 = const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic, color: Colors.black54);
    static const TextStyle font14_white = const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic, color: Colors.white);
    static const TextStyle font12_black54 = const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic, color: Colors.black54);
    static const TextStyle font16_black54 = const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black54);

    // Themes
    static ThemeData themeTopLevel() {
        return ThemeData(
            brightness: Brightness.light,
            primaryColor: AppColors.flutterLogoDarkBlue,
            primaryColorBrightness: Brightness.dark,
            accentColor: AppColors.flutterLogoLightBlue,
            scaffoldBackgroundColor: Colors.white,
            dialogBackgroundColor: AppColors.offWhiteCustom,
            cardColor: AppColors.offWhiteCustom,
            splashColor: Colors.white.withOpacity(0.4),
            highlightColor: Colors.white.withOpacity(0.3),
            buttonColor: AppColors.flutterLogoLightBlue,
            buttonTheme: ButtonThemeData(
                minWidth: double.infinity,
                height: 48.0,
                padding: const EdgeInsets.all(12.0),
                shape: const Border(),
                buttonColor: AppColors.flutterLogoLightBlue,
                textTheme: ButtonTextTheme.primary,
            ),
            textSelectionHandleColor: AppColors.flutterLogoLightBlue,
        );
    }




    // Styles
    static const TextStyle loginButtonLargeStyle = const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500);
    static const TextStyle loginButtonSmallStyle = const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300);
    static const TextStyle tabLabelStyle = const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400);
    static const TextStyle unselectedTabStyle = const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300);
    static const TextStyle ctaButtonStyle = const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500);
    static const TextStyle mySessionHeaderText = const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: AppColors.colorForMySessionText);
    static const TextStyle mySessionPagePopups = const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: AppColors.colorForMySessionPopupText);
    static const TextStyle optionButtonStyle = const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500);
    static const TextStyle loginTextFieldStyle = const TextStyle(fontSize: 16.0, color: Colors.white);

    // Paddings
    static const EdgeInsets textFieldPadding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0);
    static const EdgeInsets textFieldWithButtonPadding = const EdgeInsets.fromLTRB(20.0, 12.0, 0.0, 12.0);

    // Borders
    static const InputBorder textFieldBorder = const UnderlineInputBorder(borderRadius: BorderRadius.zero);

    // Input Decoration
    static InputDecoration textFieldDecoration = InputDecoration(
        filled: true,
        fillColor: AppColors.colorDarkPurpleBackground.withOpacity(0.6),
        contentPadding: AppTheme.textFieldPadding,
        border: AppTheme.textFieldBorder,
        hintStyle: TextStyle(
            color: Colors.white.withOpacity(0.8),
        ),
        errorStyle: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 14.0,
        ),
    );


}
