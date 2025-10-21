import 'geo_json.dart';

class GeoJsonGeometryCollection extends GeoJson {
  List<GeoJson>? geometries;

  GeoJsonGeometryCollection({
    List<double>? boundingBox,
    this.geometries,
  }) : super(
          boundingBox: boundingBox,
          type: 'GeometryCollection',
        );

  factory GeoJsonGeometryCollection.fromJson(
    Map<String, dynamic> json,
  ) {
    return GeoJsonGeometryCollection(
      boundingBox: (json['bbox'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      geometries: (json['geometries'] as List<dynamic>?)
          ?.map((e) => GeoJson.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'bbox': boundingBox,
      'geometries': geometries?.map((e) => e.toJson()).toList(),
      'type': type,
    };
  }
}
