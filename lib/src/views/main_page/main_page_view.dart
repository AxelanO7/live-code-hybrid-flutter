import 'package:live_code/src/core/base_import.dart';
import 'package:live_code/src/views/main/main_page_controller.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

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
      mobile: (controller) => const LoginMobilePage(),
      desktop: (controller) => const LoginDesktopPage(),
    );
  }
}
