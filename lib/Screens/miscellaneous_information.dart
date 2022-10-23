import 'package:flutter/material.dart';

TextStyle allStyle = const TextStyle(
fontWeight: FontWeight.w600,
fontSize: 18.0,
);

TextStyle infoStyle = const TextStyle(
  fontWeight: FontWeight.w300,
  fontSize: 18.0,
);

Widget miscellaneous(
String wind, String humidity, String pressure, String cloudy,

)
{
return Container(
  width: double.infinity,
  padding: const EdgeInsets.all(19),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Wind",
              style: allStyle,
              ),
              const SizedBox(
                height: 18.0,
              ),
              Text(
                  "Pressure",
                style: allStyle,
              ),



            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(wind,
                style: infoStyle,
              ),
              const SizedBox(
                height: 18.0,
              ),
              Text(
                pressure,
                style: infoStyle,
              ),

            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Humidity",
                style: allStyle,
              ),
              const SizedBox(
                height: 18.0,
              ),
              Text(
                "Cloudy",
                style: allStyle,
              ),

            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(humidity,
                style: infoStyle,
              ),
              const SizedBox(
                height: 18.0,
              ),
              Text(
                cloudy,
                style: infoStyle,
              ),

            ],
          ),

        ],
      ),
    ],
  ),


);
}