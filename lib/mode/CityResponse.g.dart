part of 'CityResponse.dart';

CityResponse _$cityResponseFromJson(Map<String,dynamic> json) {
  return new CityResponse(json['reason'] as String,
      (json['result'] as List)
          ?.map((e) => CityBean.fromJson(e as Map<String,dynamic>))
      ?.toList(),
      json['error_code'] as int);
}

_$cityResponseToJson(CityResponse cityResponse) => <String,dynamic>{
  'reason': cityResponse.reason,
  'error_code': cityResponse.error_code,
  'result':cityResponse.result
};