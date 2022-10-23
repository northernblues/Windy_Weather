import 'package:flutter/material.dart';

class Weather {
  String? cityName;
  double? temp;
  double? wind;
  int? humidity;
  int? cloudy;
  int? pressure;


  Weather({
    this.cityName,
    this.temp,
    this.wind,
    this.humidity,
    this.cloudy,
    this.pressure,
});

  Weather.fromJson(Map<String, dynamic> json){
  cityName = json['name'];
  temp = json ['main'] ['temp'];
  wind = json ['wind'] ['speed'];
  pressure = json ['main'] ['pressure'];
  humidity = json ['main'] ['humidity'];
  cloudy = json ['clouds'] ['all'];


  }


}