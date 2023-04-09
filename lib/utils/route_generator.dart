import 'package:academyathlon/pages/login/login_page.dart';
import 'package:academyathlon/pages/post/post_page.dart';
import 'package:academyathlon/pages/profile/profile_page.dart';
import 'package:academyathlon/pages/subjects/subject_list_page.dart';
import 'package:academyathlon/utils/error_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../pages/main/main_page.dart';

class RouteGenerator {
  static Route<dynamic>? _createRoute(
      Widget routeWidget, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
        settings: settings,
        builder: (builder) => routeWidget,
      );
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
        settings: settings,
        builder: (builder) => routeWidget,
      );
    } else {
      return CupertinoPageRoute(
        settings: settings,
        builder: (builder) => routeWidget,
      );
    }
  }

  static Route<dynamic>? routeGeneration(RouteSettings settings) {
    switch (settings.name) {
      case '/main':
        return _createRoute(MainPage(), settings);
      case '/subList':
        return _createRoute(const SubjectList(), settings);
      case '/profile':
        return _createRoute(const ProfilePage(), settings);
      case '/post':
        return _createRoute(const PostPage(), settings);
      case '/':
        return _createRoute(const Login(), settings);
      default:
        return _createRoute(const ErrorPage(), settings);
    }
  }
}