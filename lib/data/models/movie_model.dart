import 'package:clenarchitechture/domain/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  final bool? adult;
  final String backdropPath;
  final int id;
  final String title;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final String posterPath;
  final String? mediaType;
  final List<int>? genreIds;
  final double? popularity;
  final String releaseDate;
  final bool? video;
  final double voteAverage;
  final int? voteCount;

  MovieModel({
    this.adult,
    required this.backdropPath,
    required this.id,
    required this.title,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    required this.posterPath,
    this.mediaType,
    this.genreIds,
    this.popularity,
    required this.releaseDate,
    this.video,
    required this.voteAverage,
    this.voteCount,
  }) : super(
            id: id,
            backdropPath: backdropPath,
            posterPath: posterPath,
            title: title,
            releaseDate: releaseDate,
            voteAverage: voteAverage,
            overview: overview);

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      id: json['id'],
      title: json['title'],
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      overview: json['overview'],
      posterPath: json['poster_path'],
      mediaType: json['media_type'],
      genreIds: json['genre_ids'].cast<int>(),
      popularity: json['popularity']?.toDouble() ?? 0.0,
      releaseDate: json['release_date'],
      video: json['video'],
      voteAverage: json['vote_average']?.toDouble() ?? 0.0,
      voteCount: json['vote_count'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdropPath;
    data['id'] = this.id;
    data['title'] = this.title;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['overview'] = this.overview;
    data['poster_path'] = this.posterPath;
    data['media_type'] = this.mediaType;
    data['genre_ids'] = this.genreIds;
    data['popularity'] = this.popularity;
    data['release_date'] = this.releaseDate;
    data['video'] = this.video;
    data['vote_average'] = this.voteAverage;
    data['vote_count'] = this.voteCount;

    return data;
  }
}
