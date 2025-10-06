import 'keyword.dart';

class AddressKeyword extends Keyword {
  AddressKeyword({
    int? id,
    String? token,
  }) : super(
          id: id,
          token: token,
        );

  factory AddressKeyword.fromJson(
    Map<String, dynamic> json,
  ) {
    return AddressKeyword(
      id: (json['id'] as num?)?.toInt(),
      token: json['token'] as String?,
    );
  }
}
