import '../repositories/repository.dart';

class AuthCases {
  AuthCases(this.repository);
  final Repository repository;

  ///get authToken from local.
  Future<String?> getSecureValue(String key) => repository.getSecureValue(key);
}
