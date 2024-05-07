import 'package:get/get.dart';
import 'package:marvel_app/domain/domain.dart';
import 'package:marvel_app/domain/models/get_character_details.dart';
import 'package:marvel_app/domain/models/get_character_listing.dart';
import 'package:marvel_app/domain/usecases/authcases.dart';

class HomePresenter {
  HomePresenter(this.authCases);
  final AuthCases authCases;

  Future<GetCharacterListing> getCharacterListing() async {
    return await authCases.getCharacterListing();
  }

  Future<GetCharacterDetails> getCharacterDetails(
      {required int characterId}) async {
    return await authCases.getCharacterDetails(characterId: characterId);
  }
}
