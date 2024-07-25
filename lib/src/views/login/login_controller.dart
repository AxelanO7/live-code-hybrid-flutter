import 'package:live_code/src/core/base_import.dart';

class LoginController extends BaseController {
  bool isLoadingLogin = false;
  TextEditingController usernameController = TextEditingController(), passwordController = TextEditingController();

  @override
  onInit() {
    super.onInit();
  }

  @override
  onReady() {
    getUsernameLocal();
    super.onReady();
  }

  @override
  onClose() {
    super.onClose();
  }

  getUsernameLocal() async {
    isLoading = true;
    update();
    usernameController.text = await SettingsUtils.getString("username") ?? '';
    isLoading = false;
    update();
  }

  validateForm() {
    if (usernameController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar('Gagal', 'Harap isi semua kolom');
      return false;
    }
    return true;
  }

  validateCredentials() {
    if (usernameController.text == 'admin' && passwordController.text == '4dm1n') {
      return true;
    }
    Get.snackbar('Gagal', 'Kredensial tidak valid');
    return false;
  }

  bool doLogin() {
    if (validateForm() && validateCredentials()) {
      return true;
    }
    return false;
  }

  handleLogin() async {
    isLoadingLogin = true;
    update();
    if (!doLogin()) {
      isLoadingLogin = false;
      update();
      return;
    }
    SettingsUtils.set("username", usernameController.text);
    Get.snackbar('Berhasil', 'Login berhasil');
    isLoadingLogin = false;
    update();
    onGetStarted();
  }

  onGetStarted() {
    Get.offAllNamed(AppRoutes.mainPage);
  }
}
