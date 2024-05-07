import 'package:get/get.dart';
import 'package:marvel_app/app/pages/home_page/home_page_presenter.dart';

class HomePageController extends GetxController {
  HomePageController(this.homePresenter);
  HomePresenter homePresenter;

  Future<void> getCharacterListing() async {
    var response = await homePresenter.getCharacterListing();
    if (response.code == 200) {
      print("api call successfully");
    } else {
      print("api call failed");
    }
  }

  Future<void> getCharacterDetails({required int characterId}) async {
    var response = await homePresenter.getCharacterDetails(characterId: characterId);
    if (response.code == 200) {
      print("api call successfully");
    } else {
      print("api call failed");
    }
  }
}
