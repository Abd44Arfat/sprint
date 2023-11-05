import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserSecureStorage {
  static const _tokenKey = 'token';
  static const _usernameKey = 'username';
  static const _emailKey = 'email';
  const UserSecureStorage(this._secureStorage);
  final FlutterSecureStorage _secureStorage;

  Future<void> upsertUserInfo({
    required String username,
    required String email,
    String? token,
  }) =>
      Future.wait([
        _secureStorage.write(
          key: _emailKey,
          value: email,
        ),
        _secureStorage.write(
          key: _usernameKey,
          value: username,
        ),
        if (token != null)
          _secureStorage.write(
            key: _tokenKey,
            value: token,
          )
      ]);

  Future<void> deleteUserInfo() => Future.wait([
        _secureStorage.delete(
          key: _tokenKey,
        ),
        _secureStorage.delete(
          key: _usernameKey,
        ),
        _secureStorage.delete(
          key: _emailKey,
        ),
      ]);

  Future<String?> getUserToken() => _secureStorage.read(
        key: _tokenKey,
      );
  Future<String?> getUserEmail() => _secureStorage.read(
        key: _emailKey,
      );
  Future<String?> getUsername() => _secureStorage.read(
        key: _usernameKey,
      );
}

@module
abstract class InjectableUserSecureStorageModule {
  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();
}
