import 'package:flutter/material.dart';
import 'package:windy_weather/Screens/current_weather.dart';
import 'package:windy_weather/Screens/miscellaneous_information.dart';
import 'package:windy_weather/Services/weather_services_client.dart';

import 'Models/weather_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.lightBlue,
      home: _HomePage(),

    );
  }
}

class _HomePage extends StatefulWidget {
  const _HomePage({Key? key}) : super(key: key);

  @override
  State<_HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<_HomePage> {
  final WeatherApiClient _weatherApiClient = WeatherApiClient();
  // final Weather _weather = Weather();
  late Weather? data;

  Future<void> getData() async{
    data = await _weatherApiClient.getCurrentWeather("Nepal");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(42, 186, 245, 0.7),
      appBar: AppBar(
        foregroundColor: Colors.lightBlue,
        backgroundColor: const Color(0xFFf9f9f9),
        elevation: 0.0,
        title: const Text("Windy Weather", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),

      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context,snapshot){
          if (snapshot.connectionState == ConnectionState.done){
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  currentWeather(Icons.wb_sunny_rounded, '${data?.temp}°', '${data?.cityName}'),
                  const SizedBox(
                    height: 60.0,
                  ),
                  const Text(
                    "Additional Information",
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Color(0xdd212121),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 24.0,
                  ),
                  miscellaneous("${data?.wind}", "${data?.pressure}", "${data?.humidity}", "${data?.cloudy}"),
                  const SizedBox(
                    height: 19,
                  )
                ],

            );

          }
          else if (snapshot.connectionState == ConnectionState.waiting){
          return const Center(
            child: CircularProgressIndicator(),
          );
          }
          return Container();
        },
      ),



    );
  }
}


