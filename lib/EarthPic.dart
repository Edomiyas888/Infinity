import 'package:flutter/material.dart';
import 'package:nasa_pictures/Backend/apodAPI.dart';
import 'package:nasa_pictures/controllers/apod.dart';
import 'package:transparent_image/transparent_image.dart';

class EarthPic extends StatefulWidget {
  const EarthPic({super.key});

  @override
  State<EarthPic> createState() => _AstroState();
}

class _AstroState extends State<EarthPic> {
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
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [ 
          Center(
            child: Stack(
              
              children: [
               // CircularProgressIndicator(),
                FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: 'https://api.nasa.gov/EPIC/archive/natural/2019/05/30/png/epic_1b_20190530011359.png?api_key=DEMO_KEY',
                fit: BoxFit.cover,
                fadeInDuration: Duration(milliseconds: 300),
              ),]
            ),
          ),
                          // Image.network('https://api.nasa.gov/EPIC/archive/natural/2019/05/30/png/epic_1b_20190530011359.png?api_key=DEMO_KEY'),
                          Text('The above picture is Updated Daily with the Picture Taken from the internation Space Station.The International Space Station is the largest modular space station in low Earth orbit. The project involves five space agencies: the United States',
                          style: TextStyle(color: Colors.white),
                           )
                        ],
                      ),
                    ),
                  
                  ),
        ),
      ),
    );
  }
}