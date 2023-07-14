import 'package:flutter/material.dart';
import 'package:nasa_pictures/Backend/apodAPI.dart';
import 'package:nasa_pictures/controllers/apod.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AstroState();
}

class _AstroState extends State<About> {
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
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Center(
                                   child: Text("Introduction The wonders of space have always captivated humanity's imagination, and advancements in technology have made it possible for us to embark on incredible cosmic journeys. In this era of digital innovation, a new application emerges, offering users a unique and awe-inspiring experience. This essay delves into the details of a remarkable application that showcases the wonders of the universe, including NASAs Astronomy Picture of the Day, Mars Rover Pics, and daily updates from the International Space Station.nveiling the NASA Space App:The NASA Space App represents a gateway to the depths of space, providing users with a captivating visual adventure through a rich collection of cosmic imagery. With its diverse features, the app offers a holistic experience for space enthusiasts, allowing them to witness the marvels of our universe like never before.Astronomy Picture of the Day:At the heart of the app lies the Astronomy Picture of the Day feature. Each day, users are presented with a breathtaking image selected by NASA's experts. These images showcase the beauty and grandeur of space, from distant galaxies and nebulae to celestial phenomena occurring within our own solar system. With vivid descriptions accompanying each image, users gain insights into the scientific and aesthetic aspects of the cosmic wonders captured.Mars Rover Pics:For those intrigued by the enigmatic Red Planet, the Mars Rover Pics feature is a gateway to the captivating landscape of Mars. This segment of the app showcases a collection of images captured by NASA's rovers as they explore the Martian surface. Users can witness the vast deserts, towering mountains, and intriguing geological formations, all while uncovering the ongoing scientific discoveries made by these robotic explorers. The Mars Rover Pics feature offers an immersive experience that ignites curiosity about the mysteries of Mars.Daily Updates from the International Space Station:Adding another dimension to the app's offerings, daily updates from the International Space Station (ISS) provide users with a glimpse into the daily lives of astronauts living and working aboard the orbiting laboratory. These updates feature stunning photographs taken by astronauts, showcasing Earth from a unique perspective. Users can witness breathtaking views of our planet, awe-inspiring sunrises and sunsets, and even witness the auroras dancing across the sky. Through these updates, the app fosters a sense of connection with the brave men and women who reside in the realm beyond our atmosphere.Conclusion:The NASA Space App represents an incredible portal to the cosmos, enabling users to embark on a virtual journey through space. With its captivating features, including the Astronomy Picture of the Day, Mars Rover Pics, and daily updates from the International Space Station, the app offers a multidimensional experience that both educates and inspires. It serves as a reminder of the vastness and beauty of our universe while fostering a sense of wonder and curiosity about the celestial realms beyond our home planet. Through this application, the mysteries of space become more accessible, allowing users to embark on a daily cosmic adventure from the comfort of their smartphones or tablets.",style: TextStyle(color: Colors.white),),
                    ),
                  ),
        ),
      ),
    );
  }
}