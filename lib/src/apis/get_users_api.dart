import 'dart:convert';

import 'package:live_code/src/core/base_api.dart';
import 'package:live_code/src/core/base_import.dart';

class GetUsersApi extends BaseApi {
  @override
  String url = '${CoreConfig.getApiUrl()}/users';

  Future<ResultApi> request() async {
    if (CoreConfig.getDebuggableConfig("is_debug_mode")) LogUtils.log(requestPayload);

    try {
      var response = await post(Uri.parse(url), headers: requestHeaders, body: json.encode(requestPayload));

      checkResponse(response);

      responseData.statusCode = response.statusCode;
      if (checkStatus200(response)) {
        var responseBody = json.decode(response.body);
        var data = Users.fromJson(responseBody);
        responseData.status = true;
        responseData.data = data;
        responseData.message = "Success";
      }
    } catch (e) {
      printError(e);
    }
    return responseData;
  }
}
