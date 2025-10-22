import 'geo_json.dart';

class GeoJsonMultiLineString extends GeoJson {
  List<List<List<double>>>? coordinates;

  GeoJsonMultiLineString({
    List<double>? boundingBox,
    this.coordinates,
  }) : super(
          boundingBox: boundingBox,
          type: 'MultiLineString',
        );

  factory GeoJsonMultiLineString.fromJson(
    Map<String, dynamic> json,
  ) {
    return GeoJsonMultiLineString(
      boundingBox: (json['bbox'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>)
              .map((e) => (e as List<dynamic>)
                  .map((e) => (e as num).toDouble())
                  .toList())
              .toList())
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'bbox': boundingBox,
      'coordinates': coordinates,
      'type': type,
    };
  }
}
