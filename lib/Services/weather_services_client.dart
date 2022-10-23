import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:windy_weather/Models/weather_model.dart';

class WeatherApiClient{
  Future<Weather>? getCurrentWeather(String? location) async{
    var endpoint = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$location&appid=bac786991acecb79cc9269576c05d882&units=metric");

    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(Weather.fromJson(body).cityName);
    return Weather.fromJson(body); // or return Weather.fromJson(body);

  }

}


