import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/core/app_export.dart';
import 'package:travelapp/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber(
      {required this.country, required this.onTap, required this.controller});

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {
                _openCountryPicker(context);
              },
              child: Padding(
                padding: getPadding(
                  top: 73,
                  bottom: 2,
                ),
                child: Text(
                  "+${country.phoneCode}",
                  style: AppStyle.txtInterRegular17Black900.copyWith(
                    height: getVerticalSize(
                      1.03,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: getVerticalSize(
                26.00,
              ),
              width: getHorizontalSize(
                1.00,
              ),
              margin: getMargin(
                left: 6,
                top: 71,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.blueGray100,
              ),
            ),
            Expanded(
              child: CustomTextFormField(
                width: 285,
                focusNode: FocusNode(),
                controller: controller,
                hintText: "lbl_000_000_0000".tr,
                margin: getMargin(
                  left: 13,
                  top: 73,
                  right: 6,
                  bottom: 2,
                ),
                variant: TextFormFieldVariant.None,
                fontStyle: TextFormFieldFontStyle.InterRegular17,
              ),
            ),
          ],
        ),
        Container(
          height: getVerticalSize(
            1.00,
          ),
          width: getHorizontalSize(
            353.00,
          ),
          decoration: BoxDecoration(
            color: ColorConstant.blueGray100,
          ),
        ),
      ],
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: getHorizontalSize(10),
            ),
            width: getHorizontalSize(60.0),
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: getFontSize(14)),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: getFontSize(14))),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
