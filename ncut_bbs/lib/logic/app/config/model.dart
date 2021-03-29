class AppConfig {
  List<String> allColleges;

  AppConfig({this.allColleges});

  AppConfig.fromJson(Map<String, dynamic> json) {
    allColleges = json['all_colleges'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['all_colleges'] = this.allColleges;
    return data;
  }
}
