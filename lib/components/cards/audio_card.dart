import 'package:flutter/material.dart';
import 'package:music_mobile_app/theme/app_colors.dart';

class AudioCard extends StatelessWidget {
  final String audioCover;
  final String title;
  const AudioCard({super.key, required this.audioCover, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 140,
        child: Card(
          color: Color(0XFF282C30),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: AppColors.white, width: 0.14),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 43,
                  backgroundImage: AssetImage(audioCover),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(title,
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        color: Color(0XFF989CA0), fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        ));
  }
}
