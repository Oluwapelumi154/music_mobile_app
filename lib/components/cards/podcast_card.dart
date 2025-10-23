import 'package:flutter/material.dart';
import 'package:music_mobile_app/theme/app_colors.dart';

class PodCastCard extends StatelessWidget {
  final String image;
  final String title;
  final Color color;
  const PodCastCard(
      {super.key,
      required this.image,
      required this.title,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
        color: Color(0XFF282C30),
        child: Column(
          children: [
            Image.asset(
              image,
              fit: BoxFit.fill,
              repeat: ImageRepeat.noRepeat,
              width: 160,
              height: 135,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: color),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Six60. Mitch James,Tiki. Taane And More',
                    softWrap: true,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          height: 1.3,
                          fontSize: 13,
                        ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
