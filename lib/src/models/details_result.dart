// https://nominatim.openstreetmap.org/details?osmtype=W&osmid=28911088&class=tourism&format=json&addressdetails=1&keywords=1&linkedplaces=1&hierarchy=1&polygon_geojson=1

import 'address_keyword.dart';
import 'address_line.dart';
import 'geo_json.dart';
import 'geo_json_point.dart';
import 'name_keyword.dart';
import 'result.dart';

class DetailsResult extends Result {
  List<AddressKeyword>? addressKeywords;
  List<AddressLine>? addressLines;
  Map<String, String>? addressTags;
  int? adminLevel;
  double? calculatedImportance;
  String? calculatedPostcode;
  String? calculatedWikipedia;
  GeoJsonPoint? centroid;
  String? countryCode;
  List<AddressLine>? hierarchy;
  String? icon;
  DateTime? indexedDate;
  bool? isArea;
  String? localName;
  Map<String, String>? names;
  List<NameKeyword>? nameKeywords;
  int? parentPlaceId;
  int? rankAddress;
  int? rankSearch;

  DetailsResult({
    this.addressKeywords,
    this.addressLines,
    this.addressTags,
    this.adminLevel,
    this.calculatedImportance,
    this.calculatedPostcode,
    this.calculatedWikipedia,
    String? category,
    this.centroid,
    this.countryCode,
    Map<String, String>? extraTags,
    GeoJson? geoJson,
    this.hierarchy,
    this.icon,
    double? importance,
    this.indexedDate,
    this.isArea,
    this.localName,
    this.nameKeywords,
    this.names,
    int? osmId,
    String? osmType,
    this.parentPlaceId,
    int? placeId,
    this.rankAddress,
    this.rankSearch,
    String? type,
  }) : super(
          category: category,
          extraTags: extraTags,
          geoJson: geoJson,
          importance: importance,
          osmId: osmId,
          osmType: osmType,
          placeId: placeId,
          type: type,
        );

  factory DetailsResult.fromJson(
    Map<String, dynamic> json,
  ) {
    return DetailsResult(
      addressKeywords: (json['keywords']?['address'] as List<dynamic>?)
          ?.map((e) => AddressKeyword.fromJson(e as Map<String, dynamic>))
          .toList(),
      addressLines: (json['address'] as List<dynamic>?)
          ?.map((e) => AddressLine.fromJson(e as Map<String, dynamic>))
          .toList(),
      addressTags: (json['addresstags'] as Map<String, dynamic>?)?.map(
        (k, v) => MapEntry(k, v as String),
      ),
      adminLevel: (json['admin_level'] as num?)?.toInt(),
      calculatedImportance: (json['calculated_importance'] as num?)?.toDouble(),
      calculatedPostcode: json['calculated_postcode'] as String?,
      calculatedWikipedia: json['calculated_wikipedia'] as String?,
      category: json['category'] as String?,
      centroid: json['centroid'] != null
          ? GeoJsonPoint.fromJson(json['centroid'] as Map<String, dynamic>)
          : null,
      countryCode: json['country_code'] as String?,
      extraTags: (json['extratags'] as Map<String, dynamic>?)?.map(
        (k, v) => MapEntry(k, v as String),
      ),
      geoJson: json['geometry'] != null
          ? GeoJson.fromJson(json['geometry'] as Map<String, dynamic>)
          : null,
      hierarchy: (json['hierarchy'] as List<dynamic>?)
          ?.map((e) => AddressLine.fromJson(e as Map<String, dynamic>))
          .toList(),
      icon: json['icon'] as String?,
      importance: (json['importance'] as num?)?.toDouble(),
      indexedDate: json['indexed_date'] != null
          ? DateTime.parse(json['indexed_date'] as String)
          : null,
      isArea: json['isarea'] as bool?,
      localName: json['localname'] as String?,
      nameKeywords: (json['keywords']?['name'] as List<dynamic>?)
          ?.map((e) => NameKeyword.fromJson(e as Map<String, dynamic>))
          .toList(),
      names: (json['names'] as Map<String, dynamic>?)?.map(
        (k, v) => MapEntry(k, v as String),
      ),
      osmId: (json['osm_id'] as num?)?.toInt(),
      osmType: json['osm_type'] as String?,
      parentPlaceId: (json['parent_place_id'] as num?)?.toInt(),
      placeId: (json['place_id'] as num?)?.toInt(),
      rankAddress: (json['rank_address'] as num?)?.toInt(),
      rankSearch: (json['rank_search'] as num?)?.toInt(),
      type: json['type'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'address': addressLines?.map((e) => e.toJson()).toList(),
      'addresstags': addressTags,
      'admin_level': adminLevel,
      'calculated_importance': calculatedImportance,
      'calculated_postcode': calculatedPostcode,
      'calculated_wikipedia': calculatedWikipedia,
      'category': category,
      'centroid': centroid?.toJson(),
      'country_code': countryCode,
      'extratags': extraTags,
      'geometry': geoJson?.toJson(),
      'hierarchy': hierarchy?.map((e) => e.toJson()).toList(),
      'icon': icon,
      'importance': importance,
      'indexed_date': indexedDate?.toIso8601String(),
      'isarea': isArea,
      'keywords': {
        'address': addressKeywords?.map((e) => e.toJson()).toList(),
        'name': nameKeywords?.map((e) => e.toJson()).toList(),
      },
      'localname': localName,
      'names': names,
      'osm_id': osmId,
      'osm_type': osmType,
      'parent_place_id': parentPlaceId,
      'place_id': placeId,
      'rank_address': rankAddress,
      'rank_search': rankSearch,
      'type': type,
    };
  }
}
