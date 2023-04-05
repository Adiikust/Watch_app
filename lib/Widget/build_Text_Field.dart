import 'package:flutter/material.dart';
import 'package:watch_app/Utils/Colors/app_color.dart';

class BuildTextField extends StatelessWidget {
  String? hintText;

  BuildTextField({Key? key, this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 43,
      child: TextField(
        style: TextStyle(color: Colors.black, fontSize: 16),
        decoration: InputDecoration(
          hintText: "search product",
          hintStyle: TextStyle(
              color: AppColors.kTextColor2,
              fontSize: 14,
              fontWeight: FontWeight.bold),
          fillColor: AppColors.kWhiteColor,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.kTextColor2),
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.kTextColor1,
          ),
        ),
      ),
    );
  }
}
