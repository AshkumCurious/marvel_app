import '../../domain/repositories/domain_repository.dart';
import '../helpers/connect_helper.dart';

class DataRepository implements DomainRepository {
  /// [connectHelper] : A connection helper which will connect to the
  /// remote to get the data.
  DataRepository(this.connectHelper, );

  final ConnectHelper connectHelper;

  @override
  void clearData(key) {
    throw UnimplementedError();
  }

  @override
  void deleteAllSecuredValues() {
    throw UnimplementedError();
  }

  @override
  void deleteSecuredValue(String key) {
    throw UnimplementedError();
  }

  @override
  int getIntValue(String key) {
    throw UnimplementedError();
  }

  @override
  void clearBox() {
    throw UnimplementedError();
  }

  @override
  bool getBoolValue(String key) {
    throw UnimplementedError();
  }

  @override
  Future<String?> getSecuredValue(String key) {
    throw UnimplementedError();
  }

  @override
  String getStringValue(String key) {
    throw UnimplementedError();
  }

  @override
  void saveValue(key, value) {
    throw UnimplementedError();
  }

  @override
  void saveValueSecurely(String key, String value) {
    throw UnimplementedError();
  }

  @override
  Future<dynamic> getCharacterListing() {
    return connectHelper.getCharacterListing();
  }
}
