// https://nominatim.openstreetmap.org/search?q=legoland&format=jsonv2&addressdetails=1&extratags=1&namedetails=1&polygon_geojson=1

import 'geo_json.dart';
import 'result.dart';

class SearchResult extends Result {
  SearchResult({
    Map<String, String>? address,
    String? addressType,
    List<double>? boundingBox,
    String? category,
    String? displayName,
    Map<String, String>? extraTags,
    GeoJson? geoJson,
    String? geoKml,
    String? geoSvg,
    String? geoText,
    double? importance,
    double? lat,
    String? licence,
    double? lon,
    String? name,
    Map<String, String>? nameDetails,
    int? osmId,
    String? osmType,
    int? placeId,
    int? placeRank,
    String? type,
  }) : super(
          address: address,
          addressType: addressType,
          boundingBox: boundingBox,
          category: category,
          displayName: displayName,
          extraTags: extraTags,
          geoJson: geoJson,
          geoKml: geoKml,
          geoSvg: geoSvg,
          geoText: geoText,
          importance: importance,
          lat: lat,
          licence: licence,
          lon: lon,
          name: name,
          nameDetails: nameDetails,
          osmId: osmId,
          osmType: osmType,
          placeId: placeId,
          placeRank: placeRank,
          type: type,
        );

  factory SearchResult.fromJson(
    Map<String, dynamic> json,
  ) {
    return SearchResult(
      address: json['address'] != null
          ? Map<String, String>.from(json['address'])
          : null,
      addressType: json['addresstype'] as String?,
      boundingBox: json['boundingbox'] != null
          ? List<String>.from(json['boundingbox']).map(double.parse).toList()
          : null,
      category: json['category'] as String?,
      displayName: json['display_name'] as String?,
      extraTags: json['extratags'] != null
          ? Map<String, String>.from(json['extratags'])
          : null,
      geoJson:
          json['geojson'] != null ? GeoJson.fromJson(json['geojson']) : null,
      geoKml: json['geokml'] as String?,
      geoSvg: json['svg'] as String?,
      geoText: json['geotext'] as String?,
      importance: (json['importance'] as num?)?.toDouble(),
      lat: json['lat'] != null ? double.parse(json['lat'] as String) : null,
      licence: json['licence'] as String?,
      lon: json['lon'] != null ? double.parse(json['lon'] as String) : null,
      name: json['name'] as String?,
      nameDetails: json['namedetails'] != null
          ? Map<String, String>.from(json['namedetails'])
          : null,
      osmId: (json['osm_id'] as num?)?.toInt(),
      osmType: json['osm_type'] as String?,
      placeId: (json['place_id'] as num?)?.toInt(),
      placeRank: (json['place_rank'] as num?)?.toInt(),
      type: json['type'] as String?,
    );
  }
}
