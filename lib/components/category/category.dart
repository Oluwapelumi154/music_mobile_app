import 'package:flutter/material.dart';
import 'package:music_mobile_app/theme/app_colors.dart';

class Category extends StatelessWidget {
  final String title;
  final String image;
  const Category({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      width: 130,
      decoration: BoxDecoration(
          color: Color(0XFF282C30),
          border: Border.all(color: AppColors.grey, width: 0.3),
          borderRadius: BorderRadius.circular(40)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              image,
              width: 56,
              height: 56,
              fit: BoxFit.fitHeight,
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Text(
                title,
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.visible,
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: AppColors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
