import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:music_mobile_app/components/button/cirular_button.dart';
import 'package:music_mobile_app/theme/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final int type;
  final String? subTitle;
  const CustomAppBar(
      {super.key, required this.title, this.type = 1, this.subTitle});

  @override
  Widget build(BuildContext context) {
    if (type == 1) {
      return PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            CircularButton(
                width: 48,
                height: 48,
                image: Icon(
                  Icons.flash_on,
                  color: AppColors.white,
                )),
            SizedBox(
              width: 13,
            ),
            CircularButton(
                width: 48,
                onClick: () {
                  Scaffold.of(context).openDrawer();
                },
                height: 48,
                image: Icon(
                  Icons.grid_view,
                  color: AppColors.white,
                )),
          ],
        ),
      );
    } else if (type == 2) {
      return PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Row(
            children: [
              CircularButton(
                  width: 45,
                  height: 45,
                  onClick: () {
                    context.pop();
                  },
                  image: Icon(Icons.arrow_back_ios, color: AppColors.white)),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontSize: 12, color: AppColors.grey),
                    ),
                    SizedBox(
                      height: 4.5,
                    ),
                    if (subTitle != null)
                      Text(
                        subTitle!,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(fontWeight: FontWeight.w600),
                      )
                  ],
                ),
              ),
              CircularButton(
                  width: 45,
                  height: 45,
                  image: Icon(
                    Icons.more_vert,
                    color: AppColors.white,
                  ))
            ],
          ));
    } else {
      return PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              CircularButton(
                  width: 45,
                  height: 45,
                  image: Icon(
                    Icons.more_vert,
                    color: AppColors.white,
                  ))
            ],
          ));
    }
  }
}
