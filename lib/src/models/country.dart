class Country {
  final String name;

  Country({this.name});

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(name: json["country"]);
  }
}
