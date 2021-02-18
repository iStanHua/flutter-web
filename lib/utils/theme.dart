import 'package:flutter_web/material.dart';

class ThemeUtil {

  // 主色调
  static const Color baseColor = const Color(0xFF007BFF);
  // 背景色
  static const Color bgColor = Color(0xFFFAFBFC);
  // 字体色
  static const Color fontColor = Color(0xFF333333);
  // 边框色
  static const Color borderColor = Color(0xFFDFDFDF);
  static const Color disabledColor = Color(0xFFF5F7FA);
  static const Color placeholderColor = Color(0xFFAAAAAA);

  static const Color successColor = Color(0xFF19BE6A);
  static const Color warningColor = Color(0xFFFF9900);
  static const Color dangerColor = Color(0xFFED3F14);
  static const Color infoColor = Color(0xFF878D99);

  static const Color blackColor = Color(0xFF000000);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color redColor = Color(0xFFDC3545);
  static const Color darkColor = Color(0xFF666666);
  static const Color grayColor = Color(0xFF999999);

  static const Color errorColor = Color(0xFFED3F14);

  static final kDefaultShadow = BoxShadow(
    offset: Offset(0, 50),
    blurRadius: 50,
    color: Color(0xFF0700B1).withOpacity(0.15),
  );

  static final kDefaultCardShadow = BoxShadow(
    offset: Offset(0, 20),
    blurRadius: 50,
    color: Colors.black.withOpacity(0.1),
  );

  // TextField dedign
  static final kDefaultInputDecorationTheme = InputDecorationTheme(
    border: kDefaultOutlineInputBorder,
    enabledBorder: kDefaultOutlineInputBorder,
    focusedBorder: kDefaultOutlineInputBorder,
  );

  static final kDefaultOutlineInputBorder = OutlineInputBorder(
    // Maybe flutter team need to fix it on web
    // borderRadius: BorderRadius.circular(50),
    borderSide: BorderSide(
      color: Color(0xFFCEE4FD),
    ),
  );

}
