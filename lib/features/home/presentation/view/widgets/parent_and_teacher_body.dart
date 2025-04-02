import 'package:flutter/material.dart';
import 'package:khuta_app/core/utils/assest_data.dart';
import 'package:khuta_app/features/home/presentation/view/widgets/custom_text_button_add_child_img.dart';
import 'package:khuta_app/features/home/presentation/view/widgets/custom_text_field_search.dart';

class ParentAndTeacherBody extends StatelessWidget {
  const ParentAndTeacherBody({super.key, required this.bottomNavBarItem});
  final Widget bottomNavBarItem;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 16),
          CustomTextFieldSearch(),
          SizedBox(height: 69),
          Image.asset(AssetsData.kParentandteacherImg),
          SizedBox(height: 188),
          CustomButtonAddChild(),
        ],
      ),
    );
  }
}
