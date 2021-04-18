import 'package:flutter/material.dart';

// Main Screen for portrait mode on mobile
class MainScreenPortrait extends StatefulWidget {
  const MainScreenPortrait({
    Key key,
  }) : super(key: key);

  @override
  _MainScreenPortraitState createState() => _MainScreenPortraitState();
}

class _MainScreenPortraitState extends State<MainScreenPortrait> {
  var imageUrl = "https://pngimg.com/uploads/earth/earth_PNG8.png";
  var planetName = "This is Earth";

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Text(
              planetName,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            SizedBox(
              height: 40,
            ),
            Image.network("" + imageUrl),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: screenWidth / 4,   //Button width is dynamically increase or decrease depending on screen width
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
                  width: 30,
                ),
                SizedBox(
                  height: 50,
                  width: screenWidth / 4, //Button width is dynamically increase or decrease depending on screen width
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
                  width: 30,
                ),
                SizedBox(
                  height: 50,
                  width: screenWidth / 4, //Button width is dynamically increase or decrease depending on screen width
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
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            )
          ],
        ),
      ),
    );
  }
}
