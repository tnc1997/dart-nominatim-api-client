import 'package:http/http.dart' as http;

/// Adds 'user-agent' header when making HTTP requests.
///
/// If 'user-agent' is already present on the request, it will complete with an exception. This will prevent accidental overrides of a header with the user agent.
class UserAgentClient extends http.BaseClient {
  final String _userAgent;
  final http.Client _inner;

  UserAgentClient({
    required String userAgent,
    http.Client? inner,
  })  : _userAgent = userAgent,
        _inner = inner ?? http.Client();

  @override
  void close() {
    _inner.close();
  }

  @override
  Future<http.StreamedResponse> send(
    http.BaseRequest request,
  ) {
    if (request.headers.containsKey('user-agent')) {
      throw ArgumentError.value(
        request,
        'request',
        'Attempted to make an HTTP request that already has a "user-agent" header. Adding the "user-agent" would override that existing value.',
      );
    }

    return _inner.send(
      http.Request(
        request.method,
        request.url,
      )
        ..headers.addAll(request.headers)
        ..headers['user-agent'] = _userAgent,
    );
  }
}

/// Obtains a [Client] that uses the given [userAgent] for making HTTP requests.
///
/// If [inner] is provided, all HTTP requests will be made with it. Otherwise, a new [Client] instance will be created.
///
/// The user is responsible for closing the returned HTTP [Client]. Closing the returned [Client] will also close the [inner] client.
http.Client clientViaUserAgent(
  String userAgent, {
  http.Client? inner,
}) {
  return UserAgentClient(
    userAgent: userAgent,
    inner: inner,
  );
}
