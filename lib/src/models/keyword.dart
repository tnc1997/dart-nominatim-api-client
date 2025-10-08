abstract class Keyword {
  int? id;
  String? token;

  Keyword({
    this.id,
    this.token,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'token': token,
    };
  }
}
