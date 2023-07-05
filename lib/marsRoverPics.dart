import 'package:flutter/material.dart';
import 'package:nasa_pictures/controllers/marsrover.dart';

import 'Backend/apodAPI.dart';
import 'controllers/apod.dart';

class MarsRover extends StatefulWidget {
  MarsRover({super.key});

  @override
  State<MarsRover> createState() => _MarsRoverState();
}

class _MarsRoverState extends State<MarsRover> {
  late Future<MarsRover1> futureAlbum;

  final ApiCall _apiCall = ApiCall();

  @override
  void initState() {
    super.initState();
    futureAlbum = _apiCall.fetchMarsROver();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Colors.blueGrey],
            ),
          ),
          child: Center(
            child: FutureBuilder<MarsRover1>(
                future: futureAlbum,
                builder: (context, snapshot) {
                  print(snapshot.hasData);
                  if (snapshot.hasData) {
                    return Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: ListView.builder(
                          itemCount: snapshot.data!.photos!.length,
                          itemBuilder: (build, index) {
                            return Card(
                              color: Colors.transparent,
                              
                              child: SizedBox(
                                height: 350,
                                width: 70,
                                child: ListTile(
                                  title: Image.network(
                                    
                                    snapshot.data!.photos![index].imgSrc ?? '',
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Text('Failed to load the image');
                                    },
                                  ),
                                  subtitle: Text("Date:  ${snapshot
                                      .data!.photos![index].earthDate
                                      .toString()}",style: TextStyle(color: Colors.white),),
                                ),
                              ),
                            );
                          }),
                    );
                  } else if (snapshot.hasError) {
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
