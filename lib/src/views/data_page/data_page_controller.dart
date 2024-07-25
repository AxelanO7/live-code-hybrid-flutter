import 'dart:convert';

import 'package:live_code/src/core/base_import.dart';

class DataPageController extends BaseController {
  bool isLoadingUser = false;
  List<Users> listUser = [];

  @override
  onInit() {
    super.onInit();
  }

  @override
  onReady() {
    getUserData();
    super.onReady();
  }

  @override
  onClose() {
    super.onClose();
  }
  
  handleBack() {
    Get.back();
  }

  getUserData() async {
    isLoadingUser = true;
    update();
    var res = await GetUsersApi().request();
    if (res.status) {
      listUser = res.listData as List<Users>;
    } else {
      Get.snackbar('Gagal', 'Gagal mendapatkan data user');
      isLoadingUser = false;
      update();
      return;
    }
    isLoadingUser = false;
    update();
  }
}
