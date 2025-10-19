import 'geo_json.dart';
import 'geo_json_feature.dart';

class GeoJsonFeatureCollection extends GeoJson {
  List<GeoJsonFeature>? features;

  GeoJsonFeatureCollection({
    List<double>? boundingBox,
    this.features,
  }) : super(
          boundingBox: boundingBox,
          type: 'FeatureCollection',
        );

  factory GeoJsonFeatureCollection.fromJson(
    Map<String, dynamic> json,
  ) {
    return GeoJsonFeatureCollection(
      boundingBox: (json['bbox'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      features: (json['features'] as List<dynamic>?)
          ?.map((e) => GeoJsonFeature.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'bbox': boundingBox,
      'features': features?.map((e) => e.toJson()).toList(),
      'type': type,
    };
  }
}
