import 'geo_json.dart';

class GeoJsonLineString extends GeoJson {
  List<List<double>>? coordinates;

  GeoJsonLineString({
    List<double>? boundingBox,
    this.coordinates,
  }) : super(
          boundingBox: boundingBox,
          type: 'LineString',
        );

  factory GeoJsonLineString.fromJson(
    Map<String, dynamic> json,
  ) {
    return GeoJsonLineString(
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
