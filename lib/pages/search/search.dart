import 'package:flutter/material.dart';
import 'package:music_mobile_app/components/app_bar.dart';
import 'package:music_mobile_app/components/bottom_bar.dart';
import 'package:music_mobile_app/components/category/category.dart';
import 'package:music_mobile_app/components/gradient_scaffold.dart';
import 'package:music_mobile_app/components/search-input/search_input.dart';
import 'package:music_mobile_app/theme/app_colors.dart';
import 'package:music_mobile_app/utils/music_category.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  static final List<MusicCategory> genres = [
    MusicCategory(image: "assets/images/podcast.png", title: "Podcasts"),
    MusicCategory(image: "assets/images/podcast.png", title: "Live Events"),
    MusicCategory(image: "assets/images/podcast.png", title: "New Releases"),
    MusicCategory(image: "assets/images/podcast.png", title: "Hindi"),
    MusicCategory(image: "assets/images/podcast.png", title: "Punjabi"),
    MusicCategory(image: "assets/images/podcast.png", title: "Tamil"),
    MusicCategory(image: "assets/images/podcast.png", title: "Telugu"),
    MusicCategory(image: "assets/images/podcast.png", title: "Charts"),
    MusicCategory(image: "assets/images/podcast.png", title: "Pop"),
    MusicCategory(image: "assets/images/podcast.png", title: "Indie"),
    MusicCategory(image: "assets/images/podcast.png", title: "Trending"),
    MusicCategory(image: "assets/images/podcast.png", title: "Love"),
    MusicCategory(image: "assets/images/podcast.png", title: "Discover"),
    MusicCategory(image: "assets/images/podcast.png", title: "Radio"),
    MusicCategory(image: "assets/images/podcast.png", title: "Mood"),
    MusicCategory(image: "assets/images/podcast.png", title: "Party"),
    MusicCategory(image: "assets/images/podcast.png", title: "Devotional"),
    MusicCategory(image: "assets/images/podcast.png", title: "Decades"),
    MusicCategory(image: "assets/images/podcast.png", title: "Hip-Hop"),
    MusicCategory(
        image: "assets/images/podcast.png", title: "Dance/Electronic"),
    MusicCategory(image: "assets/images/podcast.png", title: "Student"),
    MusicCategory(image: "assets/images/podcast.png", title: "Chill"),
    MusicCategory(image: "assets/images/podcast.png", title: "Gaming")
  ];

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      bodyPadding: EdgeInsets.only(right: 18, left: 18),
      appBar: CustomAppBar(
        title: "Search",
        type: 3,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 14,
          ),
          SearchInput(),
          SizedBox(
            height: 18,
          ),
          Text(
            "Browse all",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: GridView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: genres.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 56,
                    crossAxisSpacing: 13,
                    mainAxisSpacing: 20),
                itemBuilder: (context, index) {
                  final data = genres[index];
                  return Category(title: data.title, image: data.image);
                }),
          ),
        ],
      ),
    );
  }
}
