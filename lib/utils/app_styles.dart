import 'package:flutter/material.dart';
import 'package:travel_mate/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleMedium16(context) {
    return TextStyle(
      color: const Color(0xff4A6670),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      color: const Color(0xff7AA0A7),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular22(context) {
    return TextStyle(
      color: const Color(0xff7AA0A7),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
      color: const Color(0xff7AA0A7),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular16(context) {
    return TextStyle(
        color: const Color(0xff7AA0A7),
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleSemiBold25(context) {
    return TextStyle(
      color: const Color(0xff4A6670),
      fontSize: getResponsiveFontSize(context, fontSize: 25),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
        color: const Color(0xffFFFFFF),
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleSemiBold30(context) {
    return TextStyle(
      color: const Color(0xff4A6670),
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleMedium20(context) {
    return TextStyle(
      color: const Color(0xff4A6670),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium14(context) {
    return TextStyle(
      color: const Color(0xff4A6670),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold14(context) {
    return TextStyle(
      color: const Color(0xFF1095D5),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleLight14(context) {
    return TextStyle(
      color: const Color(0xff000000),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w300,
    );
  }

  // static const TextStyle styleRegular17 = TextStyle(
  //   color: Color(0xffFF3B30),
  //   fontSize: 17,
  //   fontFamily: 'Poppins',
  //   fontWeight: FontWeight.w400,
  // );
  // static const TextStyle styleRegular19 = TextStyle(
  //   color: Color(0xffFF3B30),
  //   fontSize: 19,
  //   fontFamily: 'Poppins',
  //   fontWeight: FontWeight.w400,
  // );

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      color: const Color(0xFF7AA0A7),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold12(context) {
    return TextStyle(
      color: const Color(0xFFFF3B30),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      color: const Color(0xFF4A6670),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular20(context) {
    return TextStyle(
      color: const Color(0xff4A6670),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium12(context) {
    return TextStyle(
      color: const Color(0xffFF3B30),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleRegular10(context) {
    return TextStyle(
      color: const Color(0xff7AA0A7),
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold20(context) {
    return TextStyle(
      color: const Color(0xffFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
      color: const Color(0xff7AA0A7),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium24(context) {
    return TextStyle(
      color: const Color(0xff7AA0A7),
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
