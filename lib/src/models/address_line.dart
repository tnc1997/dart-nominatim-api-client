class AddressLine {
  int? adminLevel;
  String? category;
  num? distance;
  bool? isAddress;
  String? localName;
  int? osmId;
  String? osmType;
  int? placeId;
  String? placeType;
  int? rankAddress;
  String? type;

  AddressLine({
    this.adminLevel,
    this.category,
    this.distance,
    this.isAddress,
    this.localName,
    this.osmId,
    this.osmType,
    this.placeId,
    this.placeType,
    this.rankAddress,
    this.type,
  });

  factory AddressLine.fromJson(
    Map<String, dynamic> json,
  ) {
    return AddressLine(
      adminLevel: (json['admin_level'] as num?)?.toInt(),
      category: json['class'] as String?,
      distance: json['distance'] as num?,
      isAddress: json['isaddress'] as bool?,
      localName: json['localname'] as String?,
      osmId: (json['osm_id'] as num?)?.toInt(),
      osmType: json['osm_type'] as String?,
      placeId: (json['place_id'] as num?)?.toInt(),
      placeType: json['place_type'] as String?,
      rankAddress: (json['rank_address'] as num?)?.toInt(),
      type: json['type'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'admin_level': adminLevel,
      'class': category,
      'distance': distance,
      'isaddress': isAddress,
      'localname': localName,
      'osm_id': osmId,
      'osm_type': osmType,
      'place_id': placeId,
      'place_type': placeType,
      'rank_address': rankAddress,
      'type': type,
    };
  }
}
