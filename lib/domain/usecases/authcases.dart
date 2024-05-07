import 'package:marvel_app/domain/models/get_character_details.dart';
import 'package:marvel_app/domain/models/get_character_listing.dart';

import '../repositories/repository.dart';

class AuthCases {
  AuthCases(this.repository);
  final Repository repository;

  ///get authToken from local.
  Future<String?> getSecureValue(String key) => repository.getSecureValue(key);

  ///get character listing
  Future<GetCharacterListing> getCharacterListing() async {
    return await repository.getCharacterListing();
  }

  ///get character details
  Future<GetCharacterDetails> getCharacterDetails(
      {required int characterId}) async {
    return await repository.getCharacterDetails(characterId: characterId);
  }
}
