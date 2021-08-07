import 'package:flutter/material.dart';
import 'profile.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 85) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "EXPLORE",
          style: TextStyle(
              fontFamily: "Montserrat",
              fontSize: 15.0,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          iconSize: 20.0,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            iconSize: 20.0,
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
        children: [
          Container(
            height: 125.0,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10.0),
              children: [
                Column(
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.0),
                        color: Colors.orange,
                      ),
                      child: IconButton(
                        iconSize: 25.0,
                        icon: Icon(Icons.add),
                        onPressed: () {},
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      "Add To",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.0,
                ),
                InkWell(
                  child: _itemDay("Johnny Depp", "assets/johnnydepp.jpg", true),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (contex) => Profile()));
                  },
                ),
                _itemDay("Chris", "assets/chris.jpg", false),
                _itemDay("Tom Cruise", "assets/tomcruise.jpg", true),
                _itemDay("Hugh", "assets/hugh.jpg", false),
                _itemDay("Johnny Depp", "assets/johnnydepp.jpg", true)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.count(
              crossAxisCount: MediaQuery.of(context).size.width < 500.0 ? 2 : 3,
              childAspectRatio: MediaQuery.of(context).size.width < 500.0
                  ? (itemWidth / itemHeight)
                  : ((itemWidth / 4) / itemHeight),
              controller: new ScrollController(keepScrollOffset: false),
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
              shrinkWrap: true,
              children: [
                _itamPhoto("assets/window.jpeg", "I Like the Way of its look",
                    "assets/johnnydepp.jpg", "Deep", "9:51PM"),
                _itamPhoto("assets/letter.jpeg", "I Like the Way of its look",
                    "assets/chris.jpg", "Chris", "11:01AM"),
                _itamPhoto("assets/cone.jpeg", "I Like the Way of its look",
                    "assets/hugh.jpg", "Hugh", "6:11PM"),
                _itamPhoto("assets/cactus.jpeg", "I Like the Way of its look",
                    "assets/tomcruise.jpg", "Tom Cruise", "07:21PM"),
                _itamPhoto("assets/window.jpeg", "I Like the Way of its look",
                    "assets/johnnydepp.jpg", "Deep", "08:09PM"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _itamPhoto(mainImage, title, image, name, dateData) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 180.0,
          width: 150.0,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                  image: AssetImage(mainImage), fit: BoxFit.cover),
              color: Colors.orange),
        ),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 2.0, bottom: 2.0),
          child: Container(
              width: 150.0,
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 13.0,
                  color: Colors.black,
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0, left: 15.0, bottom: 5.0),
          child: Row(
            children: [
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 20.0,
              ),
              Container(
                height: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 12.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      dateData,
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 11.0,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _itemDay(String name, String url, bool isOnline) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Column(
        children: [
          Container(
            height: 70.0,
            width: 70.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35.0),
              color: Colors.orange,
              image: DecorationImage(image: AssetImage(url), fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 7.0,
          ),
          Row(
            children: [
              Text(
                name,
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 2.0,
              ),
              Container(
                height: 8.0,
                width: 8.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: isOnline ? Colors.green : Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
