import 'keyword.dart';

class NameKeyword extends Keyword {
  NameKeyword({
    int? id,
    String? token,
  }) : super(
          id: id,
          token: token,
        );

  factory NameKeyword.fromJson(
    Map<String, dynamic> json,
  ) {
    return NameKeyword(
      id: (json['id'] as num?)?.toInt(),
      token: json['token'] as String?,
    );
  }
}
