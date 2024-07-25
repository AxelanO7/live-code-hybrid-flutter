import 'package:live_code/src/core/base_import.dart';

import 'main_page_controller.dart';
import 'main_page_desktop_page.dart';
import 'main_page_mobile_page.dart';

class MainPageView extends StatelessWidget {
  const MainPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget<MainPageController>(
      backgroundColor: ColorStyle.surfaceColor,
      controller: MainPageController(),
      appBar: AppBar(
        backgroundColor: ColorStyle.blackColor,
        systemOverlayStyle: SystemUiOverlayStyle(
          // Android
          statusBarColor: ColorStyle.whiteColor,
          statusBarIconBrightness: Brightness.dark,
          // iOS
          statusBarBrightness: Brightness.light,
          systemNavigationBarColor: ColorStyle.whiteColor,
          systemNavigationBarIconBrightness: Brightness.light,
          systemNavigationBarDividerColor: ColorStyle.whiteColor,
        ),
        toolbarHeight: 0,
        elevation: 0,
        centerTitle: true,
      ),
      extendBody: true,
      mobile: (controller) => const MainPageMobilePage(),
      desktop: (controller) => const MainPageDesktopPage(),
    );
  }
}
