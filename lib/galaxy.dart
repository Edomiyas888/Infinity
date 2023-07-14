import 'package:flutter/material.dart';
import 'package:nasa_pictures/Backend/apodAPI.dart';
import 'package:nasa_pictures/controllers/apod.dart';

class Galaxy extends StatefulWidget {
  const Galaxy({super.key});

  @override
  State<Galaxy> createState() => _AstroState();
}

class _AstroState extends State<Galaxy> {
  late Future<AstronomyData> futureAlbum;
 final ApiCall _apiCall= ApiCall();
   @override
  void initState() {
    super.initState();
    futureAlbum = _apiCall.fetchAlbum();
  }
  

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.blueGrey],
                  ),),
                  child: Center(
                    child: Text('Under Development',style: TextStyle(color: Colors.white),)
                  ),
        ),
      ),
    );
  }
}