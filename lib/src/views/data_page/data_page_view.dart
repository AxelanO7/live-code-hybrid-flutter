import 'package:live_code/src/core/base_import.dart';

import 'data_page_controller.dart';
import 'data_page_desktop_page.dart';
import 'data_page_mobile_page.dart';

class DataPageView extends StatelessWidget {
  const DataPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget<DataPageController>(
      backgroundColor: ColorStyle.tertiaryColor,
      controller: DataPageController(),
      appBar: AppBar(
        backgroundColor: ColorStyle.whiteColor,
        systemOverlayStyle: SystemUiOverlayStyle(
          // Android
          statusBarColor: ColorStyle.tertiaryColor,
          statusBarIconBrightness: Brightness.dark,
          // iOS
          statusBarBrightness: Brightness.light,
          systemNavigationBarColor: ColorStyle.tertiaryColor,
          systemNavigationBarIconBrightness: Brightness.light,
          systemNavigationBarDividerColor: ColorStyle.whiteColor,
        ),
        toolbarHeight: 0,
        elevation: 0,
        centerTitle: true,
      ),
      extendBody: true,
      mobile: (controller) => const DataPageMobilePage(),
      desktop: (controller) => const DataPageDesktopPage(),
    );
  }
}
