import 'package:intl/intl.dart';
import 'package:marvel_app/domain/domain.dart';
import 'package:marvel_app/domain/models/response_model.dart';

import 'api_wrapper.dart';

class ConnectHelper {
  ///Initialize Api wrapper
  final apiWrapper = ApiWrapper();

  String getCurrentDateTimeFormatted() {
    final now = DateTime.now();
    final formatter = DateFormat('EEE, dd MMM yyyy HH:mm:ss \'GMT\'');
    return formatter.format(now.toUtc());
  }

  ///get character listing
  Future<ResponseModel> getCharacterListing() async {
    var data = {};
    return apiWrapper
        .makeRequest("v1/public/characters?", Request.get, data, true, {
      "Content-Type": "application/json; charset=utf-8",
    });
  }

  ///get character details
  Future<ResponseModel> getCharacterDetails({required int characterId}) async {
    var data = {};
    return await apiWrapper.makeRequest("/v1/public/characters/$characterId?", Request.get, data, true, {
      "Content-Type": "application/json; charset=utf-8",
    });
  }
}
