// https://nominatim.openstreetmap.org/search?q=legoland&format=jsonv2&addressdetails=1&extratags=1&namedetails=1&polygon_geojson=1

import 'geo_json.dart';

class SearchResult {
  Map<String, String>? address;
  String? addressType;
  List<double>? boundingBox;
  String? category;
  String? displayName;
  Map<String, String>? extraTags;
  GeoJson? geoJson;
  String? geoKml;
  String? geoSvg;
  String? geoText;
  double? importance;
  String? lat;
  String? licence;
  String? lon;
  String? name;
  Map<String, String>? nameDetails;
  int? osmId;
  String? osmType;
  int? placeId;
  int? placeRank;
  String? type;

  SearchResult({
    this.address,
    this.addressType,
    this.boundingBox,
    this.category,
    this.displayName,
    this.extraTags,
    this.geoJson,
    this.geoKml,
    this.geoSvg,
    this.geoText,
    this.importance,
    this.lat,
    this.licence,
    this.lon,
    this.name,
    this.nameDetails,
    this.osmId,
    this.osmType,
    this.placeId,
    this.placeRank,
    this.type,
  });

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
      lat: json['lat'] as String?,
      licence: json['licence'] as String?,
      lon: json['lon'] as String?,
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

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'addresstype': addressType,
      'boundingbox': boundingBox?.map((e) => e.toString()).toList(),
      'category': category,
      'display_name': displayName,
      'extratags': extraTags,
      'geojson': geoJson?.toJson(),
      'geokml': geoKml,
      'geotext': geoText,
      'importance': importance,
      'lat': lat,
      'licence': licence,
      'lon': lon,
      'name': name,
      'namedetails': nameDetails,
      'osm_id': osmId,
      'osm_type': osmType,
      'place_id': placeId,
      'place_rank': placeRank,
      'svg': geoSvg,
      'type': type,
    };
  }
}
