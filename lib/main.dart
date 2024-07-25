import 'package:live_code/src/core/base_import.dart';
import 'package:live_code/src/views/login/login_view.dart';
import 'package:live_code/src/views/main_page/main_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: CustomTheme.lightScheme(),
      ),
      home: const LoginView(),
      getPages: AppPages.routes,
    );
  }
}
