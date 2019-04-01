import 'package:json_annotation/json_annotation.dart';

part  'CityBean.g.dart';

@JsonSerializable()
class CityBean {
  String id;
  String city_name;
  String city_pre;
  String city_pinyin;
  String city_short;
  String count;

  CityBean(this.id,this.city_name,this.city_pre,this.city_pinyin,this.city_short,this.count);

  factory CityBean.fromJson(Map<String,dynamic> json) => _$cityBeanFromJson(json);

  Map<String,dynamic> toJson() => _$cityBeanToJson(this);
}