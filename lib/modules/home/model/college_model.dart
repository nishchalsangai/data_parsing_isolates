import 'dart:convert';

List<CollegeModel> collegeModelFromJson(String str) =>
    List<CollegeModel>.from(json.decode(str).map((x) => CollegeModel.fromJson(x)));

String collegeModelToJson(List<CollegeModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CollegeModel {
  String country;
  List<String> webPages;
  String stateProvince;
  String name;
  List<String> domains;
  String alphaTwoCode;

  CollegeModel({
    required this.country,
    required this.webPages,
    required this.stateProvince,
    required this.name,
    required this.domains,
    required this.alphaTwoCode,
  });

  CollegeModel copyWith({
    String? country,
    List<String>? webPages,
    dynamic stateProvince,
    String? name,
    List<String>? domains,
    String? alphaTwoCode,
  }) =>
      CollegeModel(
        country: country ?? this.country,
        webPages: webPages ?? this.webPages,
        stateProvince: stateProvince ?? this.stateProvince,
        name: name ?? this.name,
        domains: domains ?? this.domains,
        alphaTwoCode: alphaTwoCode ?? this.alphaTwoCode,
      );

  factory CollegeModel.fromJson(Map<String, dynamic> json) => CollegeModel(
        country: json["country"] ?? '',
        webPages: List<String>.from(json["web_pages"].map((x) => x)),
        stateProvince: json["state-province"] ?? 'Not mentioned in Api',
        name: json["name"] ?? '',
        domains: List<String>.from(json["domains"].map((x) => x)),
        alphaTwoCode: json["alpha_two_code"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "country": country,
        "web_pages": List<dynamic>.from(webPages.map((x) => x)),
        "state-province": stateProvince,
        "name": name,
        "domains": List<dynamic>.from(domains.map((x) => x)),
        "alpha_two_code": alphaTwoCode,
      };
}
