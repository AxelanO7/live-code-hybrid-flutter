import 'package:live_code/src/core/base_import.dart';
import 'package:live_code/src/views/data_page/data_page_view.dart';
import 'package:live_code/src/views/login/login_view.dart';
import 'package:live_code/src/views/main_page/main_page_view.dart';

abstract class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.mainPage,
      page: () => const MainPageView(),
    ),
    GetPage(
      name: AppRoutes.loginPage,
      page: () => const LoginView(),
    ),
    GetPage(
      name: AppRoutes.dataPage,
      page: () => const DataPageView(),
    ),
  ];
}
