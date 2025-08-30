class GeoJson {
  List<List<List<double>>>? coordinates;
  String? type;

  GeoJson({
    this.coordinates,
    this.type,
  });

  factory GeoJson.fromJson(
    Map<String, dynamic> json,
  ) {
    return GeoJson(
      coordinates: json['coordinates'] != null
          ? List<List<List<double>>>.from(json['coordinates'])
          : null,
      type: json['type'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'coordinates': coordinates,
      'type': type,
    };
  }
}
