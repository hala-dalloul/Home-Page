import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 60),
              searchBar(),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trending Restaurants",
                    style: TextStyle(fontSize: 20, fontWeight: .bold),
                  ),
                  Text("See All (220)", style: TextStyle(color: Colors.grey)),
                ],
              ),
              SizedBox(
                height: 270,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    restuarantCards(),
                    restuarantCards(),
                    restuarantCards(),
                    restuarantCards(),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trending Restaurants",
                    style: TextStyle(fontSize: 20, fontWeight: .bold),
                  ),
                  Text("See All (220)", style: TextStyle(color: Colors.grey)),
                ],
              ),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    categoryCard(),
                    categoryCard(),
                    categoryCard(),
                    categoryCard(),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Friends",
                    style: TextStyle(fontSize: 20, fontWeight: .bold),
                  ),
                  Text("See All (100)", style: TextStyle(color: Colors.grey)),
                ],
              ),

              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    friends(),
                    friends(),
                    friends(),
                    friends(),
                    friends(),
                    friends(),
                    friends(),
                    friends(),
                    friends(),
                    friends(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget searchBar() {
  return Container(
    height: 50,
    decoration: BoxDecoration(
      borderRadius: .all(Radius.circular(10)),
      border: Border.all(color: Color(0xffE8E8E8)),
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Find Restaurants",
        border: InputBorder.none,
        prefixIcon: Icon(Icons.search),
        suffixIcon: Icon(Icons.filter_list),
      ),
    ),
  );
}

Widget restuarantCards() {
  return Padding(
    padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
    child: Container(
      clipBehavior: Clip.antiAlias,
      width: 354,
      height: 240,
      decoration: (BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8)],
      )),
      child: Stack(
        children: [
          Positioned.fill(
            bottom: 90,
            child: Image.asset("image/cell1.jpeg", fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(11),
                    child: Text(
                      "OPEN",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 14,
                        fontWeight: .bold,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(11),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 20,
                          child: Center(
                            child: Icon(Icons.star, color: Colors.amber),
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "4.5",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: .bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 170, left: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Happy Bones",
                      style: TextStyle(fontSize: 20, fontWeight: .bold),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xffff8c48), Color(0xffff5673)],
                        ),
                        borderRadius: .circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "Italian",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff848dff),
                        borderRadius: .circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "1.2 m",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    smallFriends(),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "394 Broome St , New York , NY 10013,USA",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget categoryCard() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
    child: Stack(
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("image/category.jpg"),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(8),
            color: Colors.pink,
          ),
        ),
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0x992dcef8), Color(0x993b40fe)],
            ),
          ),
          child: Center(
            child: Text(
              "Italian",
              style: TextStyle(
                fontWeight: .bold,
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget friends() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
    child: Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("image/person.png"),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
    ),
  );
}

Widget smallFriends() {
  return Padding(
    padding: EdgeInsets.all(5),
    child: Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 50),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("image/person.png"),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: Colors.white,width: 1)
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 35),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("image/person.png"),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: Colors.white,width: 1)
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("image/person.png"),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: Colors.white,width: 1)
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("image/person.png"),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: Colors.white,width: 1)
            ),
          ),
        ),
      ],
    ),
  );
}
