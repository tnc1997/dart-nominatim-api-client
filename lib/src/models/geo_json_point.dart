class GeoJsonPoint {
  List<double>? boundingBox;
  List<double> coordinates;
  String type;

  GeoJsonPoint({
    this.boundingBox,
    required this.coordinates,
    required this.type,
  });

  factory GeoJsonPoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return GeoJsonPoint(
      boundingBox: (json['bbox'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      type: json['type'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'bbox': boundingBox,
      'coordinates': coordinates,
      'type': type,
    };
  }
}
