import 'package:flutter/material.dart';

import '../Screen/homescreen.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const HomeScreen(),
  };
}