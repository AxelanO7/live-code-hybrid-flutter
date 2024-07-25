import 'dart:convert';

import 'package:http/http.dart';
import 'package:live_code/src/core/base_import.dart' hide Response;

export 'package:http/http.dart';

class BaseApi {
  ResultApi responseData = ResultApi()..status = false;
  String url = '';
  String msx = '';
  var requestPayload;
  String accessToken = '';
  var requestHeaders = {'Content-Type': 'application/json', 'Accept': 'application/json'};

  printError(dynamic e) {
    LogUtils.systemLog("api-exception", e.toString());
  }

  checkResponse(Response response) async {
    if (CoreConfig.getDebuggableConfig("is_debug_mode") && CoreConfig.getDebuggableConfig("log_api_response")) {
      print('Api Response ${response.statusCode} : $url');
      print(response.body);
    }
    if (response.statusCode != 200) {
      if (response.statusCode >= 500) {
        Get.snackbar(
          'Error ${response.statusCode}',
          'Terjadi kesehalahan pada server, silahkan coba beberapa saat lagi',
          snackStyle: SnackStyle.FLOATING,
        );
      } else {
        if (CoreConfig.getDebuggableConfig("is_debug_mode")) {
          Get.snackbar(
            'Error ${response.statusCode}',
            '(${response.statusCode}) ${response.body}',
            snackStyle: SnackStyle.FLOATING,
          );
        }
      }
    }

    String? message;
    if (response.statusCode >= 400 && response.statusCode < 500) {
      Map<String, dynamic> responseBody = json.decode(response.body);
      responseData.errorsMessage = null;
      try {
        if (responseBody.containsKey('data')) {
          if (responseBody["data"].containsKey('errors')) {
            if (responseBody["data"]["errors"] is Map<String, dynamic>) {
              var err = responseBody["data"]["errors"] as Map<String, dynamic>;
              Map<String, List<dynamic>> errMsg = {};
              if (err.isNotEmpty) {
                err.forEach((key, value) {
                  errMsg[key] = [];
                  if (err[key] is List<dynamic>) {
                    List<dynamic> msgs = err[key];
                    if (msgs.isNotEmpty) {
                      errMsg[key]?.add(msgs.first?.toString() ?? '');
                    }
                  }
                });
                responseData.errorsMessage = errMsg;
              }
            }
          }
        }
      } catch (ex) {}

      if (responseData.errorsMessage == null) {
        responseData.errorsMessage = <String, List<String>>{
          "general": ['Terjadi masalah, silahkan cek jaringan kamu dan coba lagi (${responseData.statusCode})']
        };
        // responseData
        //   ..message =
        //       'Terjadi masalah, silahkan cek jaringan kamu dan coba lagi (${responseData.statusCode})';
      } else {
        // responseData..message = message ?? '';
      }
    } else if (response.statusCode >= 500) {
      Get.snackbar(
        'Error ${response.statusCode}',
        'Terjadi kesehalahan pada server, silahkan coba beberapa saat lagi',
        snackStyle: SnackStyle.FLOATING,
      );
      return;
    }
  }

  checkStatus200(Response response) {
    bool doNext = false;
    if (response.statusCode == 200 || response.statusCode == 201) {
      doNext = true;
    } else if (response.statusCode == 422) {
      var responseBody = json.decode(response.body);
      var data = ErrorLaravelResponse.fromJson(responseBody);
      responseData.errors = data.data.errors;
    }
    return doNext;
  }
}
