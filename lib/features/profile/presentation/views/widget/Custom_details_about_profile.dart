import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/go_router_model.dart';
import 'package:khuta_app/core/utils/styles.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_auth_button.dart';
import 'package:khuta_app/features/profile/presentation/views/widget/custom_button_message_dialog.dart';
import 'package:khuta_app/features/profile/presentation/views/widget/custom_card.dart';
import 'package:khuta_app/features/profile/presentation/views/widget/custom_card_with_switch.dart';

class CustomDetailsAboutProfile extends StatefulWidget {
  const CustomDetailsAboutProfile({super.key});

  @override
  State<CustomDetailsAboutProfile> createState() =>
      _CustomDetailsAboutProfileState();
}

class _CustomDetailsAboutProfileState extends State<CustomDetailsAboutProfile> {
  bool valueChangeNotification = false;
  bool valueChangeDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'عام',
                // style: Styles.textStyle13.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 16),
            CustomCard(
              icon: Icon(Icons.person),
              text: 'الملف الشخصي',
              iconButton: Icon(Icons.keyboard_arrow_left_sharp),
              onPressed: () {
                GoRouter.of(
                  context,
                ).push(GoRouterModel.kNavigateToPersonalProfileView);
              },
            ),
            CustomCardWithSwitch(
              valueChange: valueChangeNotification,

              onChanged: (val) {
                setState(() {
                  valueChangeNotification = val;
                });
              },
              text: 'الإشعارات',
              icon: Icon(Icons.notifications),
            ),
            // CustomCard(),
            CustomCard(
              icon: Icon(Icons.public),
              text: 'اللغة',
              iconButton: Icon(Icons.keyboard_arrow_left_sharp),
              langText: 'العربية',
            ),

            // CustomCard(),
            CustomCardWithSwitch(
              onChanged: (val) {
                setState(() {
                  valueChangeDarkMode = val;
                });
              },
              valueChange: valueChangeDarkMode,
              text: 'المظهر',
              icon: Icon(Icons.mode_edit_outlined),
            ),
            //=============================
            SizedBox(height: 22),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'المساعده',
                // style: Styles.textStyle13.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 16),
            CustomCard(
              icon: Icon(Icons.info_outline_rounded),
              text: 'من نحن',
              iconButton: Icon(Icons.keyboard_arrow_left_sharp),
            ),
            SizedBox(height: 97),
            CustomAuthButton(
              onPressed: () {
                showDaiaogMessageWithTwoButton(context);
              },
              textButtonAuth: 'تسجيل خروج',
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> showDaiaogMessageWithTwoButton(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    icon: Icon(Icons.close),
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'هل ترغب في تسجيل الخروج ؟',
                  style: Styles.textstyle16.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 29),

                Row(
                  children: [
                    CustomButtonMessageDialog(
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      text: 'لا ارغب',
                      onPressed: () {
                        GoRouter.of(context).pop();
                      },
                    ),
                    SizedBox(width: 8),
                    CustomButtonMessageDialog(
                      backgroundColor: kPrimaryColor,
                      textColor: Colors.white,
                      text: 'تأكيد',
                      onPressed: () {
                        GoRouter.of(
                          context,
                        ).pushReplacement(GoRouterModel.kNavigateToLoginView);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
