import 'package:bee_foundation_app/Bloc/login/login_page.dart';
import 'package:flutter/widgets.dart';
import 'bloc/app_bloc.dart';
import 'package:bee_foundation_app/BottomNavigation.dart';

List<Page> onGenerateAppViewPages(AppStatus state, List<Page<dynamic>> pages) {
  switch (state) {
    case AppStatus.authenticated:
      return [BottomNavigation.page()];
    case AppStatus.unauthenticated:
    default:
      return [LoginPage.page()];
  }
}