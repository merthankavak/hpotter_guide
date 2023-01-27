import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/gen/colors.gen.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.labelText,
      this.onChanged,
      this.textInputType = TextInputType.name,
      this.obscureText = false,
      this.errorText,
      this.suffixIcon,
      this.prefixIcon,
      this.suffixIconAction})
      : super(key: key);

  final String labelText;
  final Function(String)? onChanged;
  final TextInputType textInputType;
  final bool obscureText;
  final String? errorText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final VoidCallback? suffixIconAction;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      keyboardType: textInputType,
      obscureText: obscureText,
      style: context.textTheme.bodySmall!.copyWith(color: ColorName.black),
      decoration: InputDecoration(
        suffixIcon: InkWell(onTap: suffixIconAction, child: suffixIcon),
        prefixIcon: prefixIcon,
        labelText: labelText,
        errorText: errorText,
      ),
    );
  }
}
