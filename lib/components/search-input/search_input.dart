import 'package:flutter/material.dart';
import 'package:music_mobile_app/theme/app_colors.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        style: Theme.of(context).textTheme.displaySmall,
        decoration: InputDecoration(
          hintText: "What do you want to listen to?",
          hintStyle: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(color: AppColors.grey, fontWeight: FontWeight.w600),
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.white,
            size: 25,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: AppColors.red, width: 0.25)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: AppColors.grey, width: 0.25)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: AppColors.grey, width: 0.25)),
        ),
      ),
    );
  }
}
