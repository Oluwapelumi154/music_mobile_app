import 'package:flutter/material.dart';
import 'package:music_mobile_app/components/app_bar.dart';
import 'package:music_mobile_app/components/cards/audio_card.dart';
import 'package:music_mobile_app/components/gradient_scaffold.dart';
import 'package:music_mobile_app/components/cards/podcast_card.dart';
import 'package:music_mobile_app/theme/app_colors.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  static final List<Map<String, dynamic>> songs = [
    {"audioImageCover": 'assets/images/song-1.png', "artistName": "Davido"},
    {"audioImageCover": 'assets/images/song-2.png', "artistName": "Olamide"},
    {"audioImageCover": 'assets/images/song-3.png', "artistName": "FireBody"},
    {"audioImageCover": 'assets/images/song-2.png', "artistName": "Seyi"}
  ];

  static final List<Map<String, dynamic>> podcasts = [
    {
      "imageCover": 'assets/images/post-card.png',
      "title": "Daily Mix1",
      "description": "",
      "title_color": AppColors.pink
    },
    {
      "imageCover": 'assets/images/post-card.png',
      "title": "Daily Mix2",
      "description": "",
      "title_color": AppColors.blue
    },
    {
      "imageCover": 'assets/images/post-card.png',
      "title": "Daily Mix3",
      "description": '',
      "title_color": AppColors.yellow
    },
    {
      "imageCover": 'assets/images/post-card.png',
      "title": "Daily Mix4",
      "description": "",
      "title_color": AppColors.blue
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      drawer: Drawer(
          // backgroundColor: Colors.red,
          width: 280,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text('hello'))
            ],
          )),
      bodyPadding: EdgeInsets.only(right: 18, left: 18, bottom: 6),
      appBar: CustomAppBar(title: "Good afternoon"),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            Text(
              "Recently Played",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 160,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final song = songs[index];
                    return AudioCard(
                        audioCover: song['audioImageCover'],
                        title: song['artistName']);
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                  itemCount: 4),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "To get you started",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: 18,
            ),
            SizedBox(
              height: 250,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final podcast = podcasts[index];
                    return PodCastCard(
                        color: podcast['title_color'],
                        image: podcast['imageCover'],
                        title: podcast['title']);
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                  itemCount: 4),
            ),
            Text(
              "To get you started",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: 18,
            ),
            SizedBox(
              height: 250,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final podcast = podcasts[index];
                    return PodCastCard(
                        color: podcast['title_color'],
                        image: podcast['imageCover'],
                        title: podcast['title']);
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                  itemCount: 4),
            ),
          ],
        ),
      ),
    );
  }
}
