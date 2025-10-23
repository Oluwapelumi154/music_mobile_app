import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:music_mobile_app/components/app_bar.dart';
import 'package:music_mobile_app/components/button/cirular_button.dart';
import 'package:music_mobile_app/components/gradient_scaffold.dart';
import 'package:music_mobile_app/theme/app_colors.dart';

class SongDetailsScreen extends StatelessWidget {
  const SongDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
        appBar: CustomAppBar(
          type: 2,
          title: "Playing From Playlist",
          subTitle: "Mega Hit Mix",
        ),
        bodyPadding: EdgeInsets.only(right: 18, left: 18, bottom: 8),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Container(
                  height: 220,
                  // color: AppColors.red,
                  margin: EdgeInsets.only(top: 25),
                  width: double.infinity,
                  child: ClipRRect(
                    //  borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/mask-group.png',
                      width: 180,
                      height: 180,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Miss You',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Oliver Tree, Robin Schulz',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(color: AppColors.grey),
                      )
                    ],
                  ),
                  Image.asset('assets/icons/heart.png')
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ProgressBar(
                progress: Duration(seconds: 45),
                buffered: Duration(seconds: 60),
                thumbColor: Color(0XFF058DD9),
                thumbRadius: 6,
                progressBarColor: Color(0XFF058DD9),
                barHeight: 5,
                timeLabelTextStyle: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(fontWeight: FontWeight.w600, height: 3),
                total: Duration(minutes: 3, seconds: 20),
                onSeek: (duration) {
                  // Handle seeking logic
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircularButton(
                      width: 42,
                      height: 42,
                      image: Image.asset('assets/icons/shuffle.png')),
                  CircularButton(
                      width: 49,
                      height: 49,
                      image: Image.asset('assets/icons/previous.png')),
                  CircularButton(
                      width: 62,
                      height: 62,
                      image: Image.asset(
                        'assets/icons/pause.png',
                      )),
                  CircularButton(
                      width: 49,
                      height: 49,
                      image: Image.asset('assets/icons/next.png')),
                  CircularButton(
                      width: 42,
                      height: 42,
                      image: Image.asset('assets/icons/repeate-music.png')),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Current device",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text('This phone',
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                  color: AppColors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500))
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        child: Image.asset('assets/icons/share.png'),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      GestureDetector(
                        child: Image.asset('assets/icons/sort.png'),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.grey, width: 0.43),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.center,
                    colors: [Color(0XFF3B4047), Color(0XFF202326)],
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircularButton(
                              width: 55,
                              height: 55,
                              image: Image.asset(
                                  'assets/icons/repeate-music.png')),
                          Text(
                            'Lyrics',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(fontSize: 20),
                          ),
                          CircularButton(
                              width: 55,
                              height: 55,
                              image: Image.asset(
                                  'assets/icons/repeate-music.png')),
                        ],
                      ),
                    ),
                    Expanded(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.center,
                            // end: Alignment.center,
                            colors: [Color(0XFF3B4047), Color(0XFF202326)],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 18, horizontal: 18),
                          child: ListView(
                            children: [
                              Text(
                                'Don\'t Remind me',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(fontSize: 21),
                              ),
                              SizedBox(height: 6),
                              Text(
                                'I\'m minding my own damn business',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(fontSize: 21),
                              ),
                              SizedBox(height: 6),
                              Text('Don\'t try to find me',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(
                                          fontSize: 21, color: AppColors.grey)),
                              Text(
                                'I\'m better left alone than in this',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                        fontSize: 21, color: AppColors.grey),
                              ),
                              SizedBox(height: 6),
                              Text(
                                'it doesn\'t suprise me',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                        fontSize: 21, color: AppColors.grey),
                              ),
                              SizedBox(height: 6),
                              Text(
                                'Do you really think that i could care',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                        fontSize: 21, color: AppColors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                // height: 300,
                decoration: BoxDecoration(
                    color: AppColors.red,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.center,
                      colors: [Color(0XFF3B4047), Color(0XFF202326)],
                    ),
                    borderRadius: BorderRadius.circular(35)),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 23),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'About the artist',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontSize: 19),
                        ),
                        SizedBox(height: 16),
                        SizedBox(
                            width: double.infinity,
                            height: 250,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                'assets/images/profile-cover.png',
                                fit: BoxFit.cover,
                              ),
                            )),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Oliver Tree",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 2.5),
                                Text(
                                  "24,419,528 Monthly Listeners",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(color: AppColors.grey),
                                ),
                              ],
                            ),
                            TextButton(onPressed: () {}, child: Text('Follow')),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'An internet based vocalist, producer, writer, director and performance',
                          softWrap: true,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(color: AppColors.grey, height: 1.35),
                        )
                      ],
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                // height: 300,
                decoration: BoxDecoration(
                    color: AppColors.red,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.center,
                      colors: [Color(0XFF3B4047), Color(0XFF202326)],
                    ),
                    borderRadius: BorderRadius.circular(35)),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 23),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Live events',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontSize: 19),
                        ),
                        SizedBox(height: 16),
                        SizedBox(
                            width: double.infinity,
                            height: 250,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                'assets/images/live-events.png',
                                fit: BoxFit.cover,
                              ),
                            )),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jun 9 - Aug 25",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 2.5),
                                Text(
                                  "4 events on tour",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(color: AppColors.grey),
                                ),
                              ],
                            ),
                            TextButton(
                                onPressed: () {}, child: Text('Find Ticket')),
                          ],
                        ),
                      ],
                    )),
              )
            ],
          ),
        ));
  }
}
