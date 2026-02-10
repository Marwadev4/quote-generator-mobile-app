import 'package:json_annotation/json_annotation.dart';

part 'quote_response.g.dart';

@JsonSerializable()
class QuoteResponse {
  @JsonKey(name: 'q')
  final String quote;
  @JsonKey(name: 'a')
  final String author;

  factory QuoteResponse.fromJson(Map<String, dynamic> json) =>
      _$QuoteResponseFromJson(json);

  QuoteResponse({
    required this.quote,
    required this.author,
  });

  Map<String, dynamic> toJson() => _$QuoteResponseToJson(this);
}
