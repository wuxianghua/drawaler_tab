part of 'TodayFilmResponse.dart';

TodayFilmResponse _$todayFilmResponseFromJson(Map<String,dynamic> json) {
  return new TodayFilmResponse(json['reason'] as String,
      (json['result'] as List)
          ?.map((e) => TodayFilmBean.fromJson(e as Map<String,dynamic>))
          ?.toList(),
      json['error_code'] as int);
}

_$todayFilmResponseToJson(TodayFilmResponse todayFilmResponse) => <String,dynamic>{
  'reason': todayFilmResponse.reason,
  'error_code': todayFilmResponse.error_code,
  'result':todayFilmResponse.result
};