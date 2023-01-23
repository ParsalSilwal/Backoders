import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        getHorizontalSize(width ?? 0),
        getVerticalSize(height ?? 0),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll13:
        return getPadding(
          all: 13,
        );
      case ButtonPadding.PaddingAll3:
        return getPadding(
          all: 3,
        );
      case ButtonPadding.PaddingT3:
        return getPadding(
          top: 3,
          right: 3,
          bottom: 3,
        );
      case ButtonPadding.PaddingT14:
        return getPadding(
          top: 14,
          right: 13,
          bottom: 14,
        );
      case ButtonPadding.PaddingAll8:
        return getPadding(
          all: 8,
        );
      default:
        return getPadding(
          all: 16,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillBlack900:
        return ColorConstant.black900;
      case ButtonVariant.FillLightgreen500:
        return ColorConstant.lightGreen500;
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillBluegray900:
        return ColorConstant.blueGray900;
      case ButtonVariant.OutlineLightgreen200_1:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillBluegray800:
        return ColorConstant.blueGray800;
      case ButtonVariant.OutlineBluegray800:
        return ColorConstant.blueGray800;
      case ButtonVariant.OutlineGray600:
      case ButtonVariant.OutlineBlack900:
      case ButtonVariant.OutlineLightgreen200:
      case ButtonVariant.OutlineBluegray800_1:
        return null;
      default:
        return ColorConstant.lightGreen200;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray600:
        return BorderSide(
          color: ColorConstant.gray600,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBlack900:
        return BorderSide(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineLightgreen200:
        return BorderSide(
          color: ColorConstant.lightGreen200,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineLightgreen200_1:
        return BorderSide(
          color: ColorConstant.lightGreen200,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineBluegray800:
        return BorderSide(
          color: ColorConstant.blueGray800,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBluegray800_1:
        return BorderSide(
          color: ColorConstant.blueGray800,
          width: getHorizontalSize(
            1.00,
          ),
        );
      default:
        return null;
        ;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineLightgreen200_1:
        return ColorConstant.black9003f;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      case ButtonShape.CircleBorder24:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
      case ButtonShape.CircleBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            7.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.NunitoRegular14:
        return TextStyle(
          color: ColorConstant.blueGray800,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.InterSemiBold16Lightgreen200:
        return TextStyle(
          color: ColorConstant.lightGreen200,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.InterExtraLight16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w200,
        );
      case ButtonFontStyle.InterRegular16:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.InterSemiBold16Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.InterRegular13:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.InterBold16:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.InterRegular13Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.InterRegular16Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.NunitoRegular14Gray300:
        return TextStyle(
          color: ColorConstant.gray300,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.NunitoBold12:
        return TextStyle(
          color: ColorConstant.gray300,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.RobotoMedium14:
        return TextStyle(
          color: ColorConstant.gray300,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.RobotoMedium14Bluegray800:
        return TextStyle(
          color: ColorConstant.blueGray800,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder10,
  CircleBorder24,
  RoundedBorder7,
  CircleBorder16,
}

enum ButtonPadding {
  PaddingAll16,
  PaddingAll13,
  PaddingAll3,
  PaddingT3,
  PaddingT14,
  PaddingAll8,
}

enum ButtonVariant {
  FillLightgreen200,
  OutlineGray600,
  FillBlack900,
  FillLightgreen500,
  OutlineBlack900,
  FillWhiteA700,
  FillBluegray900,
  OutlineLightgreen200,
  OutlineLightgreen200_1,
  FillBluegray800,
  OutlineBluegray800,
  OutlineBluegray800_1,
}

enum ButtonFontStyle {
  InterSemiBold16,
  NunitoRegular14,
  InterSemiBold16Lightgreen200,
  InterExtraLight16,
  InterRegular16,
  InterSemiBold16Black900,
  InterRegular13,
  InterBold16,
  InterRegular13Black900,
  InterRegular16Black900,
  NunitoRegular14Gray300,
  NunitoBold12,
  RobotoMedium14,
  RobotoMedium14Bluegray800,
}
