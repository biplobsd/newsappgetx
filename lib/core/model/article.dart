import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@JsonSerializable()
class Article {
  @JsonKey(name: 'author')
  late String author;

  @JsonKey(name: 'title')
  late String title;

  @JsonKey(name: 'description')
  late String description;

  @JsonKey(name: 'url')
  late String url;

  @JsonKey(name: 'urlToImage')
  late String urlToImage;

  @JsonKey(name: 'publishedAt')
  late String publishedAt;

  Article({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
  });

  DateTime get publishedAtTime => DateTime.parse(publishedAt);

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
