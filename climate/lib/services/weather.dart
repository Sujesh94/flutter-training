import 'package:climate/services/location.dart';
import 'package:climate/services/networking.dart';

const apiKey='5b9ec770d7f4c7de94edd732dfa23e0c';
const openWeatherMapURL='https://api.openweathermap.org/data/2.5/weather';
class WeatherModel {

  Future getCityWeather({var cityName}) async{
    var url='$openWeatherMapURL?q=$cityName&appid=$apiKey&units=metric';
    NetworkHelper networkHelper=NetworkHelper(url);
    var weatherData=await networkHelper.getData();
    return weatherData;
  }
Future<dynamic> getLocationWeather() async{
  Location location=Location();
  await location.getCurrentLocation();
  NetworkHelper networking=NetworkHelper('$openWeatherMapURL?lat=${location.lattitude}&lon=${location.longittude}&appid=$apiKey&units=metric');
  var weatherData=await networking.getData();
  return weatherData;
}


  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
