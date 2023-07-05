import 'package:flutter/material.dart';
import 'package:nasa_pictures/Backend/apodAPI.dart';
import 'package:nasa_pictures/controllers/apod.dart';

class Astro extends StatefulWidget {
  const Astro({super.key});

  @override
  State<Astro> createState() => _AstroState();
}

class _AstroState extends State<Astro> {
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
                    child: FutureBuilder<AstronomyData>(
                      future: futureAlbum,
                      builder: (context,snapshot){
                        print(snapshot.hasData);
                        if(snapshot.hasData){
                  
                          return Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                              Text('Astronomy Picture of the Day',style: TextStyle(color: Colors.white,fontSize: 15,fontFamily: 'Orbitron'),),
                          
                                Image.network( snapshot.data!.hdurl ?? '',
                                              fit: BoxFit.cover,
                                              errorBuilder: (context, error, stackTrace) {
                                                return Text('Failed to load the image');
                                              },),
                                              Text(snapshot.data!.title,style: TextStyle(color: Colors.white),),
                                              Text(snapshot.data!.explanation,style: TextStyle(color: Colors.white))
                              ],
                            ),
                          );
                        }else if(snapshot.hasError){
                          return Text('${snapshot.error}');
                        
                        }
                        return const CircularProgressIndicator();
                      }),
                  ),
        ),
      ),
    );
  }
}