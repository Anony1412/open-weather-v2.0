class Weather {
  final String main;
  final String description;

  Weather({
    this.main,
    this.description,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      main: json["main"],
      description: json["description"],
    );
  }
}
