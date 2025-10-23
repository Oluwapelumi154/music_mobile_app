import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:music_mobile_app/components/gradient_scaffold.dart';
import 'package:music_mobile_app/theme/app_colors.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class CustomBottomNavBar extends StatefulWidget {
  final Widget child;
  const CustomBottomNavBar({super.key, required this.child});

  static final List<Map<String, dynamic>> options = [
    {
      "label": "Home",
      "icon": "assets/icons/home-default.png",
      "icon_active": "assets/icons/home-active.png",
      "path": "/"
    },
    {
      "label": 'Search',
      "icon": "assets/icons/search-default.png",
      "icon_active": "assets/icons/search-active.png",
      "path": "/search"
    },
    {
      "label": 'Your Library',
      "icon": "assets/icons/library-default.png",
      "icon_active": "assets/icons/home-active.png",
      "path": "/library"
    },
    {
      "label": "Premium",
      "icon": "assets/icons/premium-default.png",
      "icon_active": "assets/icons/premium-active.png",
      "path": "/premium"
    }
  ];

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  String currentPath = "/";
  @override
  Widget build(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();

    void optionHandler(val) {
      context.push(val);
    }

    return GradientScaffold(
      bodyPadding: EdgeInsets.zero,
      appBar: null,
      body: widget.child,
      bottomNavigationBar: SafeArea(
        top: false,
        bottom: false,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          child: Container(
            padding: EdgeInsets.only(right: 18, left: 18, top: 15, bottom: 11),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              gradient: LinearGradient(colors: [
                Color(0xFF353A40), // start
                Color(0xFF16171B), // middle
                Color(0xFF353A40),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.253,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 27,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Don\'t Forget your rods - 2021',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall
                                      ?.copyWith(
                                          color: AppColors.white,
                                          overflow: TextOverflow.ellipsis,
                                          fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text('Six 60')
                              ],
                            )
                          ],
                        )),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset('assets/icons/pause.png'),
                        ),
                        SizedBox(width: 15),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset('assets/icons/heart.png'),
                        ),
                        SizedBox(width: 15),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset('assets/icons/volume-high.png'),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
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
                      ?.copyWith(fontWeight: FontWeight.w600, height: 2),
                  total: Duration(minutes: 3, seconds: 20),
                  onSeek: (duration) {
                    // Handle seeking logic
                  },
                ),
                Container(
                  height: 65,
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                      color: AppColors.red,
                      gradient: LinearGradient(colors: [
                        Color(0xFF2F353A), // start
                        Color(0xFF1C1F22), // middle
                      ]),
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ...CustomBottomNavBar.options.map((option) {
                        return InkWell(
                          onTap: () => optionHandler(option['path']),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(location.startsWith(option['path'])
                                  ? option['icon_active']
                                  : option['icon']),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                option['label'],
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        );
                      })
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
