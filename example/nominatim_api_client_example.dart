import 'package:nominatim_api_client/nominatim_api_client.dart';

Future<void> main() async {
  // https://operations.osmfoundation.org/policies/nominatim/#:~:text=Provide%20a%20valid%20HTTP%20Referer%20or%20User%2DAgent%20identifying%20the%20application%20(stock%20User%2DAgents%20as%20set%20by%20http%20libraries%20will%20not%20do).
  final userAgent = 'MyApp/1.0.0';

  final client = clientViaUserAgent(userAgent);

  final api = NominatimApiClient(client: client);

  final results = await api.search(query: 'google');

  client.close();
}
