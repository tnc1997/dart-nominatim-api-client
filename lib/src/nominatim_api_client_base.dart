import 'dart:convert';

import 'package:http/http.dart' as http;

import 'constants/uri_constants.dart';
import 'exceptions/nominatim_api_client_exception.dart';
import 'models/reverse_result.dart';
import 'models/search_result.dart';

class NominatimApiClient {
  final http.Client _client;

  NominatimApiClient({
    http.Client? client,
  }) : _client = client ?? http.Client();

  /// Reverse geocoding generates an address from a coordinate given as latitude and longitude.
  Future<ReverseResult> reverse(
    double lat,
    double lon, {
    bool? addressDetails,
    bool? extraTags,
    bool? nameDetails,
    int? zoom,
    List<String>? layer,
    bool? polygonGeoJson,
    bool? polygonKml,
    bool? polygonSvg,
    bool? polygonText,
    double? polygonThreshold,
    bool? debug,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/reverse',
        {
          'format': 'jsonv2',
          'lat': lat.toString(),
          'lon': lon.toString(),
          if (addressDetails != null)
            'addressdetails': addressDetails ? '1' : '0',
          if (extraTags != null) 'extratags': extraTags ? '1' : '0',
          if (nameDetails != null) 'namedetails': nameDetails ? '1' : '0',
          if (zoom != null) 'zoom': zoom.toString(),
          if (layer != null) 'layer': layer.join(','),
          if (polygonGeoJson != null)
            'polygon_geojson': polygonGeoJson ? '1' : '0',
          if (polygonKml != null) 'polygon_kml': polygonKml ? '1' : '0',
          if (polygonSvg != null) 'polygon_svg': polygonSvg ? '1' : '0',
          if (polygonText != null) 'polygon_text': polygonText ? '1' : '0',
          if (polygonThreshold != null)
            'polygon_threshold': polygonThreshold.toString(),
          if (debug != null) 'debug': debug ? '1' : '0',
        },
      ),
    );

    NominatimApiClientException.checkIsSuccessStatusCode(response);

    return ReverseResult.fromJson(json.decode(response.body));
  }

  /// The search API allows you to look up a location from a textual description or address. Nominatim supports structured and free-form search queries.
  Future<List<SearchResult>> search({
    String? query,
    String? amenity,
    String? street,
    String? city,
    String? county,
    String? state,
    String? country,
    String? postalCode,
    int? limit,
    bool? addressDetails,
    bool? extraTags,
    bool? nameDetails,
    List<String>? countryCodes,
    List<String>? layer,
    String? featureType,
    List<int>? excludePlaceIds,
    List<double>? viewBox,
    bool? bounded,
    bool? polygonGeoJson,
    bool? polygonKml,
    bool? polygonSvg,
    bool? polygonText,
    double? polygonThreshold,
    bool? dedupe,
    bool? debug,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/search',
        {
          'format': 'jsonv2',
          if (query != null) 'q': query,
          if (amenity != null) 'amenity': amenity,
          if (street != null) 'street': street,
          if (city != null) 'city': city,
          if (county != null) 'county': county,
          if (state != null) 'state': state,
          if (country != null) 'country': country,
          if (postalCode != null) 'postalcode': postalCode,
          if (limit != null) 'limit': limit.toString(),
          if (addressDetails != null)
            'addressdetails': addressDetails ? '1' : '0',
          if (extraTags != null) 'extratags': extraTags ? '1' : '0',
          if (nameDetails != null) 'namedetails': nameDetails ? '1' : '0',
          if (countryCodes != null) 'countrycodes': countryCodes.join(','),
          if (layer != null) 'layer': layer.join(','),
          if (featureType != null) 'featuretype': featureType,
          if (excludePlaceIds != null)
            'exclude_place_ids': excludePlaceIds.join(','),
          if (viewBox != null) 'viewbox': viewBox.join(','),
          if (bounded != null) 'bounded': bounded ? '1' : '0',
          if (polygonGeoJson != null)
            'polygon_geojson': polygonGeoJson ? '1' : '0',
          if (polygonKml != null) 'polygon_kml': polygonKml ? '1' : '0',
          if (polygonSvg != null) 'polygon_svg': polygonSvg ? '1' : '0',
          if (polygonText != null) 'polygon_text': polygonText ? '1' : '0',
          if (polygonThreshold != null)
            'polygon_threshold': polygonThreshold.toString(),
          if (dedupe != null) 'dedupe': dedupe ? '1' : '0',
          if (debug != null) 'debug': debug ? '1' : '0',
        },
      ),
    );

    NominatimApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => SearchResult.fromJson(e))
        .toList();
  }
}
