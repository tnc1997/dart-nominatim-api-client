import 'geo_json.dart';

class GeoJsonMultiPolygon extends GeoJson {
  List<List<List<List<double>>>>? coordinates;

  GeoJsonMultiPolygon({
    List<double>? boundingBox,
    this.coordinates,
  }) : super(
          boundingBox: boundingBox,
          type: 'MultiPolygon',
        );

  factory GeoJsonMultiPolygon.fromJson(
    Map<String, dynamic> json,
  ) {
    return GeoJsonMultiPolygon(
      boundingBox: (json['bbox'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>)
              .map((e) => (e as List<dynamic>)
                  .map((e) => (e as List<dynamic>)
                      .map((e) => (e as num).toDouble())
                      .toList())
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
