import 'package:flutter/material.dart';

// Main Screen for Landscape mode on mobile
class MainScreenLandscape extends StatefulWidget {
  const MainScreenLandscape({
    Key key,
  }) : super(key: key);

  @override
  _MainScreenLandscapeState createState() => _MainScreenLandscapeState();
}

class _MainScreenLandscapeState extends State<MainScreenLandscape> {
  var imageUrl = "https://pngimg.com/uploads/earth/earth_PNG8.png";
  var planetName = "This is Earth";

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context). size. width; //getting screenWidth for button width adjustment
    return Row(
      children: [
        SizedBox(
          width: 70,
        ),
        Column(children: [
          Container(
              margin: new EdgeInsets.symmetric(vertical: 20.0),
              width: 200,
              height: 200,
              child: Image.network("" + imageUrl)),
          Text(
            planetName,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green),
          ),
        ]),
        Container(
          margin: new EdgeInsets.symmetric(horizontal: 150,vertical: 20),

          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 70,
              width: screenWidth/5,  //Button width is dynamically increase or decrease depending on screen width
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    imageUrl =
                        "https://www.pngkey.com/png/detail/8-84169_janjur-qom-alien-planet-png.png";
                    planetName = "K-PAX";
                  });
                },
                child: Text("K_PAX"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 70,
              width: screenWidth/5,  //Button width is dynamically increase or decrease depending on screen width
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    imageUrl =
                        "https://pngimg.com/uploads/mars_planet/mars_planet_PNG23.png";
                    planetName = "Mars";
                  });
                },
                child: Text("Mars"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 70,
              width: screenWidth/5,  //Button width is dynamically increase or decrease depending on screen width
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    imageUrl =
                        "https://mtv.mtvnimages.com/uri/mgid:ao:image:mtv.com:108523?quality=0.8&format=jpg&width=1440&height=810&.jpg";
                    planetName = "Miller's Planet";
                  });
                },
                child: Text("Miller's planet"),
              ),
            ),
          ]),
        )
      ],
    );
  }
}
