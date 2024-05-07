import 'package:get/get.dart';
import 'package:marvel_app/domain/domain.dart';
import 'package:marvel_app/domain/models/get_character_details.dart';
import 'package:marvel_app/domain/models/get_character_listing.dart';

class HomePresenter {
  final authCases = AuthCases(Get.find());

  Future<GetCharacterListing> getCharacterListing() async {
    return await authCases.getCharacterListing();
  }

  Future<GetCharacterDetails> getCharacterDetails(
      {required int characterId}) async {
    return await authCases.getCharacterDetails(characterId: characterId);
  }
}
