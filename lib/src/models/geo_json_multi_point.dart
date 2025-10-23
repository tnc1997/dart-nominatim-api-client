import 'geo_json.dart';

class GeoJsonMultiPoint extends GeoJson {
  List<List<double>>? coordinates;

  GeoJsonMultiPoint({
    List<double>? boundingBox,
    this.coordinates,
  }) : super(
          boundingBox: boundingBox,
          type: 'MultiPoint',
        );

  factory GeoJsonMultiPoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return GeoJsonMultiPoint(
      boundingBox: (json['bbox'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
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
