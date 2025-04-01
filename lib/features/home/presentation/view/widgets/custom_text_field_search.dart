import 'package:flutter/material.dart';
import 'package:khuta_app/constants.dart';

class CustomTextFieldSearch extends StatelessWidget {
  const CustomTextFieldSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: kGray01Color,
          // kGray01Color
          enabledBorder: outlineInputBorderSearch(),
          focusedBorder: outlineInputBorderSearch(),
          hintText: 'Search',
          suffixIcon: Icon(Icons.search),
          suffixIconColor: kPrimaryColor,
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorderSearch() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
      borderSide: BorderSide(color: kPlatinumColor),
    );
  }
}
