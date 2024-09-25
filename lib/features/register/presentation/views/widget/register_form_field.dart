import 'package:flutter/material.dart';

class RegisterFormField extends StatelessWidget {
  const RegisterFormField({
    super.key,
    required this.controller,
    required this.type,
    this.onSubmit,
    this.onChange,
    this.onTap,
    required this.validate,
    required this.hint,
    this.preifix,
    this.suffixPressed,
    this.suffix,
  });

  final TextEditingController controller;
  final TextInputType type;
  final Function(String)? onSubmit;
  final bool isPassword = false;
  final Function(String)? onChange;
  final Function()? onTap;
  final FormFieldValidator<String>? validate;
  final String hint;
  final IconData? preifix;
  final Function()? suffixPressed;
  final IconData? suffix;

  @override
  Widget build(BuildContext context) {
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
        enabledBorder:  OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(100),
        )
      ),
    );
  }
}
