import 'dart:convert';

import 'package:nasa_pictures/controllers/apod.dart';
import 'package:http/http.dart' as http;

import '../controllers/marsrover.dart';
class ApiCall{
Future<AstronomyData> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY'));
print(response.statusCode);
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return AstronomyData.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
Future<MarsRover1> fetchMarsROver() async {
  final response = await http
      .get(Uri.parse('https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY'));
print(response.statusCode);
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return MarsRover1.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
}