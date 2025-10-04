import 'geo_json.dart';

abstract class Result {
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
  double? lat;
  String? licence;
  double? lon;
  String? name;
  Map<String, String>? nameDetails;
  int? osmId;
  String? osmType;
  int? placeId;
  int? placeRank;
  String? type;

  Result({
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
      'lat': lat?.toString(),
      'licence': licence,
      'lon': lon?.toString(),
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
