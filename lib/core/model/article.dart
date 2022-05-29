// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@JsonSerializable()
class Article {
  @JsonKey(name: 'author')
  late String? author;

  @JsonKey(name: 'title')
  late String? title;

  @JsonKey(name: 'description')
  late String? description;

  @JsonKey(name: 'url')
  late String? url;

  @JsonKey(name: 'urlToImage')
  late String? urlToImage;

  @JsonKey(name: 'publishedAt')
  late String? publishedAt;

  Article({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
  });

  DateTime get publishedAtTime => DateTime.parse(publishedAt!);

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory Article.fromJson(Map<String, dynamic> json) {
    // if (kDebugMode) {
    //   print(json);
    // }
    return _$ArticleFromJson(json);
  }

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ArticleToJson(this);

  @override
  String toString() {
    return 'Article(author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt)';
  }
}
