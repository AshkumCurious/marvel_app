import 'package:marvel_app/domain/domain.dart';

import 'api_wrapper.dart';

class ConnectHelper {
  ///Initialize Api wrapper
  final apiWrapper = ApiWrapper();

  ///get character listing
  Future<dynamic> getCharacterListing() async {
    var data = {};
    return apiWrapper.makeRequest("v1/public/characters", Request.get, data, true, {
      "Content-Type": "application/json; charset=utf-8",
      "Date": "Thu, 02 May 2024 16:03:40 GMT"
    });
  }
}
