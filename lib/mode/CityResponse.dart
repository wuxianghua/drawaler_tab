
import 'package:json_annotation/json_annotation.dart';
import 'package:tab_drawable/mode/CityBean.dart';
part 'CityResponse.g.dart';

@JsonSerializable()
class CityResponse{
  String reason;
  List<CityBean> result;
  int error_code;

  CityResponse(this.reason,this.result,this.error_code);

  factory CityResponse.fromJson(Map<String,dynamic> json) => _$cityResponseFromJson(json);

  Map<String,dynamic> toJson() => _$cityResponseToJson(this);
}