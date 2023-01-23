import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillLightgreen200 => BoxDecoration(
        color: ColorConstant.lightGreen200,
      );
  static BoxDecoration get outlineBluegray100 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.blueGray100,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration();
  static BoxDecoration get fillGray700 => BoxDecoration(
        color: ColorConstant.gray700,
      );
  static BoxDecoration get outlineLightgreen200 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.lightGreen200,
          width: getHorizontalSize(
            2.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray800 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.blueGray800,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            3.00,
          ),
          strokeAlign: StrokeAlign.outside,
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get txtFillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillBluegray800 => BoxDecoration(
        color: ColorConstant.blueGray800,
      );
  static BoxDecoration get outlineBlack9003f => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9003f1 => BoxDecoration(
        color: ColorConstant.blueGray10001,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get txtOutlineBluegray800 => BoxDecoration(
        color: ColorConstant.lightGreen20033,
        border: Border.all(
          color: ColorConstant.blueGray800,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillGray300 => BoxDecoration(
        color: ColorConstant.gray300,
      );
  static BoxDecoration get txtFillGray300 => BoxDecoration(
        color: ColorConstant.gray300,
      );
  static BoxDecoration get fillBluegray10001 => BoxDecoration(
        color: ColorConstant.blueGray10001,
      );
  static BoxDecoration get txtFillBluegray10001 => BoxDecoration(
        color: ColorConstant.blueGray10001,
      );
  static BoxDecoration get txtOutlineGray300 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderTL24 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        24.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        24.00,
      ),
    ),
  );

  static BorderRadius txtRoundedBorder17 = BorderRadius.circular(
    getHorizontalSize(
      17.00,
    ),
  );

  static BorderRadius roundedBorder17 = BorderRadius.circular(
    getHorizontalSize(
      17.00,
    ),
  );

  static BorderRadius roundedBorder28 = BorderRadius.circular(
    getHorizontalSize(
      28.00,
    ),
  );

  static BorderRadius roundedBorder25 = BorderRadius.circular(
    getHorizontalSize(
      25.00,
    ),
  );

  static BorderRadius roundedBorder6 = BorderRadius.circular(
    getHorizontalSize(
      6.00,
    ),
  );

  static BorderRadius circleBorder36 = BorderRadius.circular(
    getHorizontalSize(
      36.00,
    ),
  );

  static BorderRadius roundedBorder13 = BorderRadius.circular(
    getHorizontalSize(
      13.00,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );

  static BorderRadius roundedBorder32 = BorderRadius.circular(
    getHorizontalSize(
      32.00,
    ),
  );

  static BorderRadius roundedBorder43 = BorderRadius.circular(
    getHorizontalSize(
      43.00,
    ),
  );

  static BorderRadius roundedBorder65 = BorderRadius.circular(
    getHorizontalSize(
      65.00,
    ),
  );

  static BorderRadius roundedBorder54 = BorderRadius.circular(
    getHorizontalSize(
      54.00,
    ),
  );

  static BorderRadius txtRoundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5.00,
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20.00,
    ),
  );

  static BorderRadius txtCircleBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );

  static BorderRadius txtCircleBorder34 = BorderRadius.circular(
    getHorizontalSize(
      34.00,
    ),
  );
}
