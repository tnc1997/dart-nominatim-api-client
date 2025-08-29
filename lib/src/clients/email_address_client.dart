import 'package:http/http.dart' as http;

/// Adds 'email' query parameter when making HTTP requests.
///
/// If 'email' is already present on the request, it will complete with an exception. This will prevent accidental overrides of a query parameter with the email address.
class EmailAddressClient extends http.BaseClient {
  final String _emailAddress;
  final http.Client _inner;

  EmailAddressClient({
    required String emailAddress,
    http.Client? inner,
  })  : _emailAddress = Uri.encodeQueryComponent(emailAddress),
        _inner = inner ?? http.Client();

  @override
  void close() {
    _inner.close();
  }

  @override
  Future<http.StreamedResponse> send(
    http.BaseRequest request,
  ) {
    var url = request.url;
    if (url.queryParameters.containsKey('email')) {
      throw ArgumentError.value(
        request,
        'request',
        'Attempted to make an HTTP request that already has an "email" query parameter. Adding the "email" would override that existing value.',
      );
    }

    if (url.query.isEmpty) {
      url = url.replace(
        query: 'email=$_emailAddress',
      );
    } else {
      url = url.replace(
        query: '${url.query}&email=$_emailAddress',
      );
    }

    return _inner.send(
      http.Request(
        request.method,
        url,
      )..headers.addAll(request.headers),
    );
  }
}

/// Obtains a [Client] that uses the given [emailAddress] for making HTTP requests.
///
/// If [inner] is provided, all HTTP requests will be made with it. Otherwise, a new [Client] instance will be created.
///
/// The user is responsible for closing the returned HTTP [Client]. Closing the returned [Client] will also close the [inner] client.
http.Client clientViaEmailAddress(
  String emailAddress, {
  http.Client? inner,
}) {
  return EmailAddressClient(
    emailAddress: emailAddress,
    inner: inner,
  );
}
