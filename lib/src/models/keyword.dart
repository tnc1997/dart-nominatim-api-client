class Keyword {
  int? id;
  String? token;

  Keyword({
    this.id,
    this.token,
  });

  factory Keyword.fromJson(
    Map<String, dynamic> json,
  ) {
    return Keyword(
      id: (json['id'] as num?)?.toInt(),
      token: json['token'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'token': token,
    };
  }
}
