import 'geo_json.dart';

class GeoJsonPoint extends GeoJson {
  List<double>? coordinates;

  GeoJsonPoint({
    List<double>? boundingBox,
    this.coordinates,
  }) : super(
          boundingBox: boundingBox,
          type: 'Point',
        );

  factory GeoJsonPoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return GeoJsonPoint(
      boundingBox: (json['bbox'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
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
