

import 'package:tab_drawable/dao/DaoResult.dart';
import 'package:tab_drawable/mode/TodayFilmResponse.dart';
import 'package:tab_drawable/net/Address.dart';
import 'package:tab_drawable/net/Api.dart';

class TodayDao {
  static getTodayFilmListDao() async {
    String url = Address.getTodayFilmList();
    var res = await HttpManager.netFetch(url, null, null, null);
    if(res != null && res.result) {
      var data = res.data;
      if(data == null || data.length == 0) {
        return await new DataResult([],true);
      }
      var response = TodayFilmResponse.fromJson(data);
      return await new DataResult(response.result,true);
    }else {
      return await new DataResult(null,false);
    }
  }
}