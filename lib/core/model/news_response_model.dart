import 'package:json_annotation/json_annotation.dart';

import 'package:newsappgetx/core/model/article.dart';

part 'news_response_model.g.dart';

@JsonSerializable()
class NewsResponse {
  @JsonKey(name: 'status')
  late String status;

  @JsonKey(name: 'totalResults')
  late int totalResults;

  @JsonKey(name: 'articles')
  late List<Article> articles;
  NewsResponse({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$NewsResponseToJson(this);
}
