import 'package:live_code/src/core/base_import.dart';

class MainPageController extends BaseController {
  bool isSummation = false, isMultiplication = false;
  TextEditingController firstNumberController = TextEditingController(), secondNumberController = TextEditingController();
  double result = 0;

  @override
  onInit() {
    super.onInit();
  }

  @override
  onReady() {
    super.onReady();
  }

  @override
  onClose() {
    super.onClose();
  }

  handleChangeCheckbox(bool? value, String s) {
    if (s == 'summation') {
      isMultiplication = false;
      isSummation = value!;
      update();
    } else {
      isSummation = false;
      isMultiplication = value!;
      update();
    }
  }

  validateInput() {
    if (firstNumberController.text.isEmpty || secondNumberController.text.isEmpty) {
      Get.snackbar('Gagal', 'Input tidak boleh kosong');
      return false;
    }
    return true;
  }

  handleCalculate() {
    if (validateInput()) doCalculate();
  }

  doCalculate() {
    if (isSummation)
      result = double.parse(firstNumberController.text) + double.parse(secondNumberController.text);
    else
      result = double.parse(firstNumberController.text) * double.parse(secondNumberController.text);
    update();
  }

  handleLogout() {
    Get.offAllNamed(AppRoutes.loginPage);
  }

  handleDataPage() {
    Get.toNamed(AppRoutes.dataPage);
  }
}
