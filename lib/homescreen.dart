import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final kTitleStyle =
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);
final kInfoStyle =
    TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white);

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black, brightness: Brightness.dark),
      home: RealHomePage(),
    );
  }
}

class RealHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Center(
          child: ListView(
            children: <Widget>[
              Container(
                height: 450,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/13RW-Poster.jpg'),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 5),
                              child: Image(
                                  image: AssetImage('images/Netflix_Logo.png')),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Series',
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Films',
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              'My List',
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 18, bottom: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {},
                      child: Column(
                        children: <Widget>[
                          Icon(FontAwesomeIcons.plus),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "My List",
                          )
                        ],
                      ),
                    ),
                    FlatButton(
                      color: Colors.white,
                      onPressed: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.play_arrow,
                            size: 30,
                            color: Colors.black,
                          ),
                          Text(
                            "Play",
                            style: kTitleStyle.copyWith(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    FlatButton(
                        onPressed: () {},
                        child: Column(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.infoCircle),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Info",
                            )
                          ],
                        ))
                  ],
                ),
              ),
              mostUsedCircle(title: "Previews"),
              mostUsedPoster(
                  theTitle: "Series",
                  firstimage: "images/sherlock-poster.jpg",
                  secondImage: "images/lacasa-poster.jpg",
                  thirdImage: "images/stranger-things-poster.jpg",
                  forthImage: "images/the-punisher-poster.jpg",
                  fifthImage: "images/13RW-Poster2.jpg",
                  sixthImage: "images/sex-education.jpg"),
              mostUsedPoster(
                theTitle: "Trending Now",
                firstimage: "images/lacasa-poster2.jpg",
                secondImage: "images/peaky-blinders-poster.jpg",
                thirdImage: "images/hoc-poster.jpg",
                forthImage: "images/vikings-poster.jpg",
                fifthImage: "images/jesseka-poster.jpg",
                sixthImage: "images/prison-break-poster.jpg",
              ),
              uniqueWidget(),
              mostUsedPoster(
                theTitle: "American Programms",
                firstimage: "images/sense8-poster.jpg",
                secondImage: "images/friends-poster.jpg",
                thirdImage: "images/narcos-poster.jpg",
                forthImage: "images/you-poster.jpg",
                fifthImage: "images/better-call-saul-poster.jpeg",
                sixthImage: "images/bb-poster.jpg",
              ),
              netflixOriginals(),
              mostUsedPoster(
                theTitle: "New This Week",
                firstimage: "images/hero-mask-poster.png",
                secondImage: "images/hyperdrive-poster.jpg",
                thirdImage: "images/love-alars-poster.jpg",
                forthImage: "images/american-factory-poster.jpg",
                fifthImage: "images/scared-games.jpg",
                sixthImage: "images/victim-number-8.jpg",
              ),
              mostUsedPoster(
                theTitle: "Popular On Netflix",
                firstimage: "images/ff8-poster.jpg",
                secondImage: "images/frozen-poster.jpg",
                thirdImage: "images/suits-poster.jpg",
                forthImage: "images/TWD-poster.jpg",
                fifthImage: "images/the-protector-poster.jpg",
                sixthImage: "images/our-planet-poster.jpg",
              ),
              mostUsedPoster(
                theTitle: "Courtroom Tv Programms",
                firstimage: "images/quicksand-poster.jpg",
                secondImage: "images/get-away.jpg",
                thirdImage: "images/the-people-poster.png",
                forthImage: "images/the-good-wife.jpg",
                fifthImage: "images/suspecios-partner.jpg",
                sixthImage: "images/suits-poster.jpg",
              ),
              mostUsedPoster(
                theTitle: "Top Picks for Yaseen",
                firstimage: "images/bb-poster.jpg",
                secondImage: "images/narcos-poster.jpg",
                thirdImage: "images/sense8-poster.jpg",
                forthImage: "images/black-mirror-poster22.jpg",
                fifthImage: "images/lacasa-poster2.jpg",
                sixthImage: "images/peaky-blinders-poster.jpg",
              ),
              mostUsedPoster(
                theTitle: "New Release",
                firstimage: "images/shaft-poster.jpg",
                secondImage: "images/red-sea-poster.jpg",
                thirdImage: "images/cable-girls.jpg",
                forthImage: "images/dollar-poster.jpg",
                fifthImage: "images/sextuplets-poster.jpg",
                sixthImage: "images/u-me-her-poster.jpg",
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget mostUsedCircle({String title}) {
  return Container(
    padding: EdgeInsets.only(left: 10, right: 10),
    height: 210,
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              title,
              style: kTitleStyle,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          height: 150,
          child: ListView(
            padding: EdgeInsets.only(right: 10),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: <Widget>[
              circleAvatars(image: "images/13RW-Poster.jpg", color: Colors.red),
              SizedBox(width: 10),
              circleAvatars(
                  image: "images/stranger-things-circle.png",
                  color: Colors.red),
              SizedBox(width: 10),
              circleAvatars(
                  image: "images/black-mirror-poster.jpg", color: Colors.red),
              SizedBox(width: 10),
              circleAvatars(
                  image: "images/boss-baby-circle.png", color: Colors.blue),
              SizedBox(width: 10),
              circleAvatars(
                  image: "images/lucifer-circle.png", color: Colors.red),
              circleAvatars(
                  image: "images/arrow-poster.jpg", color: Colors.red),
            ],
          ),
        )
      ],
    ),
  );
}

Widget circleAvatars({String image, Color color}) {
  return Container(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(color: color, width: 3),
    ),
    child: CircleAvatar(
      backgroundImage: AssetImage(image),
      maxRadius: 70,
    ),
  );
}

Widget mostUsedPoster(
    {String theTitle,
    String firstimage,
    String secondImage,
    String thirdImage,
    String forthImage,
    String fifthImage,
    String sixthImage}) {
  return Container(
    height: 260,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            Text(theTitle, style: kTitleStyle),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(right: 10),
            shrinkWrap: true,
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Container(
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(firstimage))),
              ),
              Container(
                width: 160,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(secondImage))),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 160,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(thirdImage))),
              ),
              Container(
                width: 160,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(forthImage))),
              ),
              Container(
                width: 160,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(fifthImage))),
              ),
              Container(
                width: 160,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(sixthImage))),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget uniqueWidget() {
  return Container(
    height: 380,
    width: 720,
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Avaialable Now Part 1",
                textAlign: TextAlign.start,
                style: kTitleStyle,
              ),
            ),
          ],
        ),
        Container(
          height: 270,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/lacasa-poster3.jpg'),
                fit: BoxFit.contain),
          ),
        ),
        Row(
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: FlatButton(
                color: Colors.white,
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.play_arrow,
                      color: Colors.black,
                    ),
                    Text(
                      "Play",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: FlatButton(
                  color: Colors.black12,
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      Text(
                        "My List",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  )),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        )
      ],
    ),
  );
}

Widget netflixOriginals() {
  return Container(
    height: 400,
    child: Column(
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Row(
            children: <Widget>[
              Text(
                "Netflix Originals",
                style: kTitleStyle,
              ),
              Icon(
                Icons.arrow_right,
                size: 40,
              )
            ],
          ),
        ),
        Container(
          height: 300,
          child: ListView(
            padding: EdgeInsets.only(left: 10, right: 10),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: <Widget>[
              Image.asset("images/narcos-poster.jpg"),
              SizedBox(
                width: 10,
              ),
              Image.asset("images/13RW-Poster2.jpg"),
              SizedBox(
                width: 10,
              ),
              Image.asset("images/mind-hunter-poster.jpg"),
              SizedBox(
                width: 10,
              ),
              Image.asset("images/dark-poster.jpg"),
              SizedBox(
                width: 10,
              ),
              Image.asset("images/orange-is-the-new-black-poster.jpg"),
              SizedBox(
                width: 10,
              ),
              Image.asset("images/bodyguard-poster.jpg"),
              SizedBox(
                width: 10,
              ),
              Image.asset("images/polar-poster.jpg"),
              SizedBox(
                width: 10,
              ),
              Image.asset("images/bird-box.jpg"),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        )
      ],
    ),
  );
}
