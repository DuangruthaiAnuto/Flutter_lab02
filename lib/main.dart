import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(SuperHeros());
}

class SuperHeros extends StatelessWidget {
  final List<String> _heroImages = [
    "images/Flash.png",
    "images/spydy.png",
    "images/Thor.png",
    "images/wonderwoman.png",
  ];

  final List<String> _heroNames = [
    "The Flash",
    "Spyderman",
    "Thor",
    "Wonder Woman",
  ];

  final List<String> _heroDetails = [
    "The Flash is an American superhero television series developed by Greg Berlanti, Andrew Kreisberg, and Geoff Johns, airing on The CW. It is based on the Barry Allen incarnation of DC Comics character the Flash, a costumed superhero crime-fighter with the power to move at superhuman speeds.",
    "Superhuman strength, agility, endurance, ability to stick to and climb walls and other surfaces, uses self-designed web-shooters allowing him to fire and swing from sticky webs, special 'Spider-Sense' warns of incoming danger, genius intellect specializing in chemistry and invention.",
    "Thor is a hammer-wielding god associated with lightning, thunder, storms, sacred groves and trees, strength, the protection of mankind and also hallowing and fertility.",
    "Wonder Woman is the princess Diana, the daughter of Hippolyta, Queen of the Amazons and Zeus, the mightiest of the Gods of Olympus. Diana volunteered to leave behind her home of Themyscira and champion the Amazons' message of peace, fighting for justice and equality in Man's World. She is a founding member of the Justice League.",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[900],
          title: Text("Super Hero"),
        ),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(10),
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(20),
                    width: double.infinity,
                    color: Colors.teal[300],
                    child: Center(
                      child: Text(
                        "Super Hero",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Hero(this._heroNames[0], this._heroImages[0],
                      this._heroDetails[0]),
                  Hero(this._heroNames[1], this._heroImages[1],
                      this._heroDetails[1]),
                  Hero(this._heroNames[2], this._heroImages[2],
                      this._heroDetails[2]),
                  Hero(this._heroNames[3], this._heroImages[3],
                      this._heroDetails[3]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Hero extends StatelessWidget {
  String _heroNames;
  String _heroImages;
  String _heroDetails;

  Hero(this._heroNames, this._heroImages, this._heroDetails, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: Colors.teal[100],
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(this._heroImages),
            ),
            SizedBox(height: 10),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.flash_on),
                  Text(
                    this._heroNames,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.pink[900],
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              child: Text(this._heroDetails),
              padding: EdgeInsets.all(25),
            )
          ],
        ),
      ),
    );
  }
}
