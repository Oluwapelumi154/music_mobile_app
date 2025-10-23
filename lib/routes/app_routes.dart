import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:music_mobile_app/components/bottom_bar.dart';
import 'package:music_mobile_app/pages/dashboard/dashboard.dart';
import 'package:music_mobile_app/pages/song/song.dart';
import 'package:music_mobile_app/pages/premium/premium.dart';
import 'package:music_mobile_app/pages/search/search.dart';
import 'package:music_mobile_app/routes/route_paths.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
      path: song,
      builder: (BuildContext context, GoRouterState state) =>
          SongDetailsScreen()),
  GoRoute(
      path: premium,
      builder: (BuildContext context, GoRouterState state) => PremiumScreen()),
  ShellRoute(
      builder: (context, state, child) => CustomBottomNavBar(child: child),
      routes: [
        GoRoute(
            path: dashboard,
            builder: (BuildContext context, GoRouterState state) =>
                Dashboard()),
        GoRoute(
            path: search,
            builder: (BuildContext context, GoRouterState state) =>
                SearchScreen())
      ]),
]);
