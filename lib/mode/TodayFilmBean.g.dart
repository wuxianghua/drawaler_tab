part of 'TodayFilmBean.dart';
TodayFilmBean _$todayFilmBeanFromJson(Map<String,dynamic> json) {
  return TodayFilmBean(json['movieId'] as String,json['movieName'] as String,
      json['pic_url'] as String);
}

Map<String,dynamic> _$todayFilmBeanToJson(TodayFilmBean instance) =>
    <String,dynamic> {
      'movieId': instance.movieId,
      'movieName': instance.movieName,
      'pic_url':instance.pic_url
    };