import 'package:flutter/material.dart';
import 'package:khuta_app/features/home/presentation/view/widgets/add_child_data_body.dart';

class AddChildDataView extends StatelessWidget {
  const AddChildDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: AddChildDataBody()));
  }
}
