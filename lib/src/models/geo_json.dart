import 'geo_json_feature.dart';
import 'geo_json_feature_collection.dart';
import 'geo_json_point.dart';

abstract class GeoJson {
  List<double>? boundingBox;
  String type;

  GeoJson({
    this.boundingBox,
    required this.type,
  });

  factory GeoJson.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json['type']) {
      case 'Feature':
        return GeoJsonFeature.fromJson(json);
      case 'FeatureCollection':
        return GeoJsonFeatureCollection.fromJson(json);
      case 'Point':
        return GeoJsonPoint.fromJson(json);
      default:
        throw ArgumentError.value(json['type'], 'type');
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'bbox': boundingBox,
      'type': type,
    };
  }
}
