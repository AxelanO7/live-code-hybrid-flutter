import 'package:live_code/src/core/base_import.dart';
import 'package:live_code/src/views/login/login_controller.dart';
import 'package:live_code/src/views/login/login_desktop_page.dart';

import 'login_mobile_page.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget<LoginController>(
      backgroundColor: ColorStyle.primaryColor,
      controller: LoginController(),
      appBar: AppBar(
        backgroundColor: ColorStyle.whiteColor,
        systemOverlayStyle: SystemUiOverlayStyle(
          // Android
          statusBarColor: ColorStyle.primaryColor,
          statusBarIconBrightness: Brightness.dark,
          // iOS
          statusBarBrightness: Brightness.light,
          systemNavigationBarColor: ColorStyle.primaryColor,
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
