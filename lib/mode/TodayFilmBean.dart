part 'TodayFilmBean.g.dart';
class TodayFilmBean{
  String movieId;
  String movieName;
  String pic_url;

  TodayFilmBean(this.movieId,this.movieName,this.pic_url);

  factory TodayFilmBean.fromJson(Map<String,dynamic> json) => _$todayFilmBeanFromJson(json);

  Map<String,dynamic> toJson() => _$todayFilmBeanToJson(this);
}