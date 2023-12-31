import 'package:flutter/material.dart';
import 'package:nasa_pictures/Astronomy.dart';
import 'package:nasa_pictures/EarthPic.dart';
import 'package:nasa_pictures/about.dart';
import 'package:nasa_pictures/galaxy.dart';
import 'package:nasa_pictures/marsRoverPics.dart';
export 'package:flutter/services.dart';

 class service extends StatefulWidget {
  const service({super.key});

  @override
  State<service> createState() => __serviceState();
}

class __serviceState extends State<service> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
          decoration:const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.blueGrey],
                ),),
                child:  Center(
                  child: Padding(
                    padding:  EdgeInsets.only(top: 30.0),
                    child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                              child: Stack(
                                children: [
                                  GestureDetector(
                                    child: ClipRRect(
                                      
                                      borderRadius: BorderRadius.circular(20),
                                      
                                      child: Image.asset(
                                        
                                        'assets/images/Infinity.jpg',fit: BoxFit.cover,
                                        height: 200,
                                        width: 150,
                                        )),
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>EarthPic()));
                                        },
                                  ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text('Daily Picture from International Space Station',style: TextStyle(color: Colors.white,fontSize: 9,fontFamily: 'Orbitron'),),
                                            ),
                                ],
                              ),
                              
                            ),
                            GestureDetector(
                              child: Container(
                                height: 120,
                                width: 150,
                                decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      
                                      borderRadius: BorderRadius.circular(20),
                                      
                                      child: Image.asset(
                                        
                                        'assets/images/MarsRover.jpg',fit: BoxFit.cover,
                                        height: 200,
                                        width: 150,
                                        )),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text('Mars Rover Photos',style: TextStyle(color: Colors.white,fontSize: 9,fontFamily: 'Orbitron'),),
                                              ),
                                  ],
                                ),
                                
                              ),
                              onTap: () {
                                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>MarsRover()));

                              },
                            ),
                            GestureDetector(
                              child: Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20),),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      
                                      borderRadius: BorderRadius.circular(20),
                                      
                                      child: Image.asset(
                                        
                                        'assets/images/x.png',fit: BoxFit.cover,
                                        height: 200,
                                        width: 150,
                                        )),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text('Astronomy Picture of the day',style: TextStyle(color: Colors.white,fontSize: 9,fontFamily: 'Orbitron'),),
                                              ),
                                  ],
                                ),
                                
                              ),
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Astro()));
                              },
                            )
                              
                              
                          ],
                              
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                                            Text('Activities',style: TextStyle(color: Colors.white,fontSize: 40,fontFamily: 'Orbitron'),),

                             GestureDetector(
                               child: Container(
                                height: 300,
                                width: 150,
                                decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      
                                      borderRadius: BorderRadius.circular(20),
                                      
                                      child: Image.asset(
                                        
                                        'assets/images/last.jpg',fit: BoxFit.cover,
                                        height: 300,
                                        width: 150,
                                        )),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text('Astronomy Picture of the day',style: TextStyle(color: Colors.white,fontSize: 9,fontFamily: 'Orbitron'),),
                                              ),
                                  ],
                                ),
                              
                               
                                
                                                         ),
                                                         onTap: (){
                                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Galaxy()));
                                                         },
                             ),
                            GestureDetector(
                              child: Container(
                                height: 100,
                                width: 150,
                                decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                                child:Stack(
                                  children: [
                                    ClipRRect(
                                      
                                      borderRadius: BorderRadius.circular(20),
                                      
                                      child: Image.asset(
                                        
                                        'assets/images/marsweather.png',fit: BoxFit.cover,
                                        height: 200,
                                        width: 150,
                                        )),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text('About Infinity',style: TextStyle(color: Colors.white,fontSize: 9,fontFamily: 'Orbitron'),),
                                              ),
                                  ],
                                )
                                
                              ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: ((context) => About())));
                              },
                            )
                            
                              
                          ],
                              
                        )
                      ],
                    ),
                  ),
                ),
          ),
        ],
      ),
    );
  }
}