# Client for Nominatim API

A client for accessing the Nominatim API.

Please note that Client for Nominatim API is unofficial and not endorsed by OpenStreetMap.

## Getting Started

1. Add this package to your application.

   ```shell
   dart pub add nominatim_api_client
   ```

1. Create a variable to store your user agent.

   ```dart
   final userAgent = 'MyApp/1.0.0';
   ```

1. Obtain an HTTP client using your user agent.

   ```dart
   final client = clientViaUserAgent(userAgent);
   ```

1. Create an API client using the HTTP client.

   ```dart
   final api = NominatimApiClient(client: client);
   ```
   
1. Fetch data from the Nominatim API using the API client.

   ```dart
   final results = await api.search(query: 'google');
   ```
