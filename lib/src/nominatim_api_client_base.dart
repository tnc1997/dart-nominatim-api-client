import 'package:http/http.dart' as http;

class NominatimApiClient {
  final http.Client _client;

  NominatimApiClient({
    http.Client? client,
  }) : _client = client ?? http.Client();
}
