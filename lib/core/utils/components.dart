import 'package:flutter/material.dart';

import 'package:my_todo/core/utils/styles.dart';

Widget registerFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function(String)? onSubmit,
  bool isPassword = false,
  Function(String)? onChange,
  Function()? onTap,
  required validate,
  String? label,
  String? hint,
  IconData? preifix,
  Function()? suffixPressed,
  IconData? suffix,
}) {
  return TextFormField(
    controller: controller,
    keyboardType: type,
    obscureText: isPassword,
    onFieldSubmitted: onSubmit,
    onChanged: onChange,
    onTap: onTap,
    validator: validate,
    decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hint,
        prefixIcon: Icon(
          preifix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(suffix),
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(100),
        )),
  );
}

Widget defaultButton ({
  required Function() onPressed,
  required String text,
  required double width,
  required double height,
}){
  return SizedBox(
    width: width,
    height: height,
    child: TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xff50C2C9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(
        text,
        style: Style.textStyle18.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
