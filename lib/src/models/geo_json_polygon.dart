import 'geo_json.dart';

class GeoJsonPolygon extends GeoJson {
  List<List<List<double>>>? coordinates;

  GeoJsonPolygon({
    List<double>? boundingBox,
    this.coordinates,
  }) : super(
          boundingBox: boundingBox,
          type: 'Polygon',
        );

  factory GeoJsonPolygon.fromJson(
    Map<String, dynamic> json,
  ) {
    return GeoJsonPolygon(
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
