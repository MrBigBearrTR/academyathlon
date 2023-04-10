import 'package:academyathlon/utils/theme_color_constant.dart';
import 'package:flutter/cupertino.dart';

class GeneralBackground {

  BoxDecoration getLoginBackground() {
    return const BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/images/grayPattern.png"),
          fit: BoxFit.fitWidth,
          alignment: Alignment.bottomCenter
      ),
      gradient: LinearGradient(
        colors: [
          ThemeColorConstant.dark1,
          ThemeColorConstant.dark2,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    );
  }

  BoxDecoration getGeneralMainBackground() {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [
          ThemeColorConstant.dark1,
          ThemeColorConstant.dark2,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    );
  }

  BoxDecoration getGeneralBackground() {
    return const BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/images/grayPattern.png"),
          fit: BoxFit.fitWidth,
          alignment: Alignment.bottomCenter),
      gradient: LinearGradient(
        colors: [
          ThemeColorConstant.darkBlue4,
          ThemeColorConstant.darkBlue3,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    );
  }
}