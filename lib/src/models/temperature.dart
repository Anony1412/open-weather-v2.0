class Temperature {
  final double temperature;
  final double temperatureMin;
  final double temperatureMax;
  final double temperatureFeelLike;
  final int humidity;

  Temperature({
    this.temperature,
    this.temperatureMin,
    this.temperatureMax,
    this.temperatureFeelLike,
    this.humidity,
  });

  factory Temperature.fromJson(Map<String, dynamic> json) {
    return Temperature(
      temperature: json["temp"],
      temperatureMin: json["temp_min"],
      temperatureMax: json["temp_max"],
      temperatureFeelLike: json["feels_like"],
      humidity: json["humidity"],
    );
  }
}
