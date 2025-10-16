import 'geo_json.dart';

class GeoJsonFeature extends GeoJson {
  GeoJson? geometry;
  dynamic id;
  Map<String, dynamic>? properties;

  GeoJsonFeature({
    List<double>? boundingBox,
    this.geometry,
    this.id,
    this.properties,
  }) : super(
          boundingBox: boundingBox,
          type: 'Feature',
        );

  factory GeoJsonFeature.fromJson(
    Map<String, dynamic> json,
  ) {
    return GeoJsonFeature(
      boundingBox: (json['bbox'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      geometry: json['geometry'] != null
          ? GeoJson.fromJson(json['geometry'] as Map<String, dynamic>)
          : null,
      id: json['id'] as dynamic,
      properties: json['properties'] as Map<String, dynamic>?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'bbox': boundingBox,
      'geometry': geometry?.toJson(),
      'id': id,
      'properties': properties,
      'type': type,
    };
  }
}
