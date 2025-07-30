enum Weather {
  sunny,
  cloudy,
  rainy,
  snowy,
}

String getWeatherMessage(Weather weather) {
  return switch (weather) {
    Weather.sunny => 'Сегодня солнечно!',
    Weather.cloudy => 'Сегодня облачно!',
    Weather.rainy => 'Сегодня дождливо!',
    Weather.snowy => 'Сегодня снежно!',
  };
}
