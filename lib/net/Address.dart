class Address {
  static const String host = "http://v.juhe.cn/";


  static getCityList() {
    return "${host}movie/citys?dtype=&key=713a408e855352d913806ef1e3ce3c33";
  }

  static getTodayFilmList() {
    return "${host}movie/movies.today?cityid=1&dtype=&key=713a408e855352d913806ef1e3ce3c33";
  }
}