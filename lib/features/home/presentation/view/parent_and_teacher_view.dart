import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/go_router_model.dart';
import 'package:khuta_app/features/home/presentation/view/widgets/parent_and_teacher_body.dart';
import 'package:khuta_app/features/profile/presentation/views/profile_view.dart';

class ParentAndTeacherView extends StatefulWidget {
  const ParentAndTeacherView({super.key});

  @override
  State<ParentAndTeacherView> createState() => _ParentAndTeacherViewState();
}

class _ParentAndTeacherViewState extends State<ParentAndTeacherView> {
  int selectedIndex = 0;
  List<Widget> bottomNavBarItems = [
    ParentAndTeacherView(), //0
    ProfileView(), //1
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: customBottomNavigatinBar(context),
      body: SafeArea(
        child: ParentAndTeacherBody(
          bottomNavBarItem: bottomNavBarItems.elementAt(selectedIndex),
        ),
      ),
    );
  }

  BottomNavigationBar customBottomNavigatinBar(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      selectedItemColor: kPrimaryColor,
      unselectedItemColor: Colors.black,
      // iconSize: 30,
      selectedIconTheme: IconThemeData(size: 30),
      unselectedIconTheme: IconThemeData(size: 25),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),

        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              GoRouter.of(context).push(GoRouterModel.kNavigateToProfileView);
            },
            icon: Icon(Icons.person),
          ),
          label: '',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: (value) {
        // selectedIndex = value;
        setState(() {
          selectedIndex = value;
          print('selectedIndex: $selectedIndex');
        });
      },
    );
  }
}
