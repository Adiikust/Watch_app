import 'package:flutter/material.dart';
import 'package:watch_app/Utils/Colors/app_color.dart';

class TastoScreen extends StatelessWidget {
  const TastoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.kBGColor,
      body: Center(child: Text("Tasto Screen")),
    );
  }
}
