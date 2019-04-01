
import 'package:json_annotation/json_annotation.dart';
import 'package:tab_drawable/mode/TodayFilmBean.dart';
part 'TodayFilmResponse.g.dart';

@JsonSerializable()
class TodayFilmResponse{
  String reason;
  List<TodayFilmBean> result;
  int error_code;

  TodayFilmResponse(this.reason,this.result,this.error_code);

  factory TodayFilmResponse.fromJson(Map<String,dynamic> json) => _$todayFilmResponseFromJson(json);

  Map<String,dynamic> toJson() => _$todayFilmResponseToJson(this);
}