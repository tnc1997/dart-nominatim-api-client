import 'package:http/http.dart' as http;

class NominatimApiClientException implements Exception {
  /// The message of the exception.
  String? message;

  /// Constructs a [NominatimApiClientException].
  NominatimApiClientException({
    this.message,
  });

  @override
  String toString() {
    if (message != null) {
      return 'NominatimApiClientException: $message';
    } else {
      return 'NominatimApiClientException';
    }
  }

  /// Checks that the [response] has a success status code.
  ///
  /// Throws a [NominatimApiClientException] if the [response] does not have a success status code.
  static http.Response checkIsSuccessStatusCode(
    http.Response response,
  ) {
    if (response.statusCode < 200 || response.statusCode >= 300) {
      if (response.body.isNotEmpty) {
        throw NominatimApiClientException(
          message: response.body,
        );
      } else {
        throw NominatimApiClientException();
      }
    } else {
      return response;
    }
  }
}
