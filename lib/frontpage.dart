import 'package:flutter/material.dart';
import 'package:test1/360view1.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player_360/video_player_360.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  static String myVideoId = 'aiafTg7e8GM';
  static String myView360 = 'https://360virtualindia.in/physicslabvt';
  //fullurl= https://www.youtube.com/watch?v=aiafTg7e8GM
  // Initiate the Youtube player controller
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
      isLive: false,
      loop: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 100,
            height: MediaQuery.of(context).size.height * 0.6,
            padding: EdgeInsets.all(40),
            color: Colors.yellowAccent.withOpacity(0.3),
            child: Column(
              children: <Widget>[
                Text(
                  'An Excellent Showroom of\n Hardwares',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'MITTAL BROTHERS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 38,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40,
                ),
                RaisedButton(
                  onPressed: () => {},
                  color: Colors.pink,
                  child: Text('Learn More'),
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 80,
            height: MediaQuery.of(context).size.height * 0.95,
            padding: EdgeInsets.all(40),
            color: Colors.amberAccent,
            child: Column(
              children: <Widget>[
                Text(
                  'OUR PRODUCTS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 38,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Image(
                  image: AssetImage('images/tiles.jpg'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Tiles',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Image(
                  image: AssetImage('images/granite.jpg'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Granite',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  onPressed: () => {},
                  color: Colors.pink,
                  child: Text(
                    'SEE MORE',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          //360 view button
          Container(
              padding: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 1,
              color: Colors.blueAccent,
              child: Column(
                children: <Widget>[
                  Text(
                    'WANT TO GO FOR A\n VIRTUAL TOUR',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ShopPage()),
                      );
                    },
                    color: Colors.pink,
                    child: Text(
                      'VIEW 360',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 30,
          ),
          //youtube video container
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.4,
            child: YoutubePlayer(
              controller: _controller,
              //liveUIColor: Colors.yellow,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 1,
            padding: EdgeInsets.all(5),
            //margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
            color: Colors.black,
            child: Text(
              'Plot no 8 Opp. Metro Pillar no.30 Near Mansarovar Metro Station, Jaipur, Rajasthan 302020 | Phone: 9314021950\n\nCopyright © Aashiyana Decor',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          /*SizedBox(
            height: 30,
          ),*/
        ],
      ),
    );
  }
}
