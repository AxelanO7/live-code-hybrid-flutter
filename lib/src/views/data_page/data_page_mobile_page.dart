import 'package:live_code/src/core/base_import.dart';

import 'main_page_controller.dart';

class MainPageMobilePage extends StatelessWidget {
  const MainPageMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainPageController>(
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: Text('MainPageMobilePage'),
          ),
        );
      },
    );
  }
}
