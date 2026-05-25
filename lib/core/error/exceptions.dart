class ServerException implements Exception {
  final String message;
  const ServerException(this.message);
}

class AppAuthException implements Exception {
  final String message;
  const AppAuthException(this.message);
}

class CacheException implements Exception {
  final String message;
  const CacheException(this.message);
}
