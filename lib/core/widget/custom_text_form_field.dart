import 'package:flutter/material.dart';
import 'package:khuta_app/core/utils/styles.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,

    this.obscureText = false,
    this.onChanged,
    required this.labelText,
  });

  final String labelText;
  final bool? obscureText;

  Function(String)? onChanged;

  // final String Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
      child: TextFormField(
        onChanged: onChanged,
        validator: (value) {
          if (value!.isEmpty) {
            return 'field is empty';
          }
        },
        obscureText: obscureText!,
        decoration: InputDecoration(
          label: Align(
            alignment: Alignment.centerRight,
            child: Text(labelText!),
          ),
          hintStyle: Styles.textStyle13.copyWith(color: Colors.grey[400]),
          border: OutlineInputBorder(),
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color(0xffE6E9EA)),
    );
  }
}
