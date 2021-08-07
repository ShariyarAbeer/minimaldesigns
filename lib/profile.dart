import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.0, top: 15.0),
                child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Container(
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(75.0),
                      image: DecorationImage(
                        image: AssetImage("assets/tomcruise.jpg"),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Tom Cruise",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 30.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                    Container(
                      height: 15.0,
                      width: 15.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.5),
                          color: Colors.green),
                      child: Icon(
                        Icons.online_prediction_rounded,
                        color: Colors.white,
                        size: 11.0,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Center(
                child: Text(
                  "A Product Designer who loves minimalism.",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 15.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "353",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 17.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(
                        "Photos",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 15.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "124",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 17.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(
                        "Videos",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 15.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "74k",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 17.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(
                        "Likes",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 15.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Photos",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 15.0,
                          color: Colors.orange,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: GridView.count(
                  crossAxisCount:
                      MediaQuery.of(context).size.width < 500 ? 3 : 4,
                  shrinkWrap: true,
                  crossAxisSpacing: 6.0,
                  mainAxisSpacing: 6.0,
                  children: [
                    _imagePhoto("assets/cone.jpeg"),
                    _imagePhoto("assets/window.jpeg"),
                    _imagePhoto("assets/letter.jpeg"),
                    _imagePhoto("assets/cactus.jpeg"),
                    _imagePhoto("assets/cone.jpeg"),
                    _imagePhoto("assets/window.jpeg"),
                    _imagePhoto("assets/letter.jpeg"),
                    _imagePhoto("assets/cactus.jpeg"),
                    _imagePhoto("assets/letter.jpeg"),
                    _imagePhoto("assets/cactus.jpeg"),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _imagePhoto(imagePhoto) {
    return Container(
      height: 100.0,
      width: 100.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
              image: AssetImage(imagePhoto), fit: BoxFit.cover)),
    );
  }
}
