import 'package:academyathlon/pages/post/post_card_context_page.dart';
import 'package:academyathlon/pages/post/post_create_page.dart';

import '../pages/post/post_saved_list_page.dart';
import '/pages/login/login_page.dart';
import '/pages/post/post_list_page.dart';
import '/pages/profile/profile_page.dart';
import '/pages/subjects/subject_list_page.dart';
import '/utils/error_page.dart';
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
        return _createRoute(const MainPage(), settings);
      case '/subList':
        return _createRoute(const SubjectList(), settings);
      case '/profile':
        return _createRoute(const ProfilePage(), settings);
      case '/post':
        return _createRoute(const PostListPage(), settings);
      case '/postCardContext':
        return _createRoute(const PostCardContextPage(), settings);
      case '/postCreate':
        return _createRoute(const PostCreatePage(), settings);
      case '/postSavedList':
        return _createRoute(const PostSavedListPage(), settings);
      case '/':
        return _createRoute(const Login(), settings);
      default:
        return _createRoute(const ErrorPage(), settings);
    }
  }
}
