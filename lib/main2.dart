import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movie/list_item.dart';
import 'package:movie/slider_item.dart';
import 'package:movie/actor1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NetflixApp(),
    );
  }
}

class NetflixApp extends StatefulWidget {
  @override
  _NetflixAppState createState() => _NetflixAppState();
}

class _NetflixAppState extends State<NetflixApp> {
  List<String> movieCarousselUrl = [
    "https://uhdwallpapers.org/uploads/cache/2304409865/episode-ix-star-wars-the-rise-of-skywalker_400x225-lm-90.webp",
    "https://uhdwallpapers.org/uploads/cache/3174554657/star-wars-the-rise-of-skywalker-new-poster_400x225-mm-90.webp",
    "https://uhdwallpapers.org/uploads/cache/4037679902/star-wars-the-rise-of-skywalker_400x225-mm-90.webp",
    "https://uhdwallpapers.org/uploads/cache/481703579/star-wars-jedi-fallen-order-screenshot_400x225-mm-90.webp",
  ];
  List<String> movieImageUrl = [
    "https://lumiere-a.akamaihd.net/v1/images/p_mulan2020_20204_b005decc.jpeg?region=0,0,540,810",
    "https://upload.wikimedia.org/wikipedia/en/2/21/Kimetsu_no_Yaiba_Mugen_Ressha_Hen_Poster.jpg",
    "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSa4t8Yz7dxTAWBZtbNhmpEYepiV_Yw8KMRf69NyjtPqbPm-LPr",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROKKn9ftbhxcRQf0NSSW4YfXPex6eyY95FrhEfU7OoTiDYRpky",
    "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTkZO-tgLmMFndFVdrFSetlssgOYf4M_i1kSfZ62vJRuBCtShRc",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Color(0xff212121),
        centerTitle: true,
        title: Text("M T R B", style: TextStyle(color: Colors.red)),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Star Wars: Episode IX",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 12.0),
              CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.9,
                  height: 280.0,
                  enlargeCenterPage: true,
                ),
                items: [
                  sliderItem(movieCarousselUrl[0], " "),
                  sliderItem(movieCarousselUrl[1], " "),
                  sliderItem(movieCarousselUrl[2], " "),
                  sliderItem(movieCarousselUrl[3], " "),
                ],
              ),
              Text(
                "Actors and Stuff",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 360.0,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ActorPage("Mark Richard Hamill")),
                        );
                      },
                      child: listItem(movieImageUrl[2], "Mark Richard Hamill, Luke Skywalker"),
                    ),
                    listItem(movieImageUrl[0], "Jeffrey Jacob Abrams, Director"),
                    listItem(movieImageUrl[1], "Daisy Jazz Isobel Ridley, Ray"),
                    listItem(movieImageUrl[3], "John Williams, Music director"),
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
