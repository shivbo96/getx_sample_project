import 'package:flutter/material.dart';
import 'package:getx_sample/shared/constants/constants.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String labelText;
  final String placeholder;
  final Color txtColor;
  final Color hintTextColor;
  final Color labelTextColor;
  final double txtFontSize;
  final double labelFontSize;
  final FontWeight labelFontWeight;
  final FontWeight txtFontWeight;
  final bool password;
  final bool readOnly;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final String? Function(String?)? onChange;
  final VoidCallback? onTap;

  InputField(
      {Key? key,
      required this.controller,
      this.keyboardType = TextInputType.text,
      this.labelText = '',
      this.placeholder = '',
      this.txtColor = Colors.black,
      this.labelTextColor = Colors.white,
      this.hintTextColor = Colors.black45,
      this.txtFontSize = 18.0,
      this.labelFontSize = 18.0,
      this.labelFontWeight = FontWeight.w500,
      this.txtFontWeight = FontWeight.w500,
      this.password = false,
      this.readOnly = false,
      this.validator,
      this.onChange,
      this.onTap,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.only(left: 8.0, bottom: 15.0, top: 15.0),
          fillColor: ColorConstants.white,
          border: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorConstants.lightGreyBg, width: 1.0),
            borderRadius: BorderRadius.circular(2.0),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(2.0)),
              borderSide: BorderSide(color: ColorConstants.lightGreyBg)),
          filled: true,
          /* focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: labelColor,
            ),
          ),*/
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorConstants.lightGreyBg,
            ),
          ),
          // floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: labelText.isNotEmpty ? labelText : null,
          labelStyle: TextStyle(
            fontFamily: "Montserrat",
            fontSize: labelFontSize,
            color: labelTextColor,
            height: 1.2,
            fontWeight: FontWeight.normal,
          ),
          hintText: placeholder,
          hintStyle: TextStyle(
            fontFamily: "Montserrat",
            fontSize: txtFontSize,
            color: hintTextColor,
            fontWeight: FontWeight.normal,
          ),
          //filled: true,
          isDense: true,
          suffixIcon: suffixIcon),
      onChanged: onChange,
      controller: controller,
      onTap: onTap,
      style: TextStyle(
        color: txtColor,
        fontFamily: "Montserrat",
        fontSize: txtFontSize,
        fontWeight: FontWeight.normal,
      ),
      keyboardType: keyboardType,
      obscureText: password,
      autocorrect: false,
      validator: validator,
      readOnly: readOnly,
    );
  }
}

