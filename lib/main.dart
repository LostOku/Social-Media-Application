import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tweet.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Twitter",
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Twitter(),
    );
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetList = [
    Tweet(
      posttime: ' 10s ago',
      avatar_url:
         'https://cdn.myanimelist.net/images/characters/8/411564.jpg?_gl=1*1hjhui8*_ga*MjM0MDI3NzA2LjE2NjU2ODE4NDU.*_ga_26FEP9527K*MTY2OTQ2NzM0Mi41LjEuMTY2OTQ2NzYwNC40NS4wLjA.',
      post_url: 'https://static.wikia.nocookie.net/tensei-shitara-slime-datta-ken/images/b/bc/Manga_Volume_10_JP.jpg',
      postText: '10th volume',),
    Tweet(
      posttime: ' 20s ago',
      avatar_url:
         'https://cdn.myanimelist.net/images/characters/8/411564.jpg?_gl=1*1hjhui8*_ga*MjM0MDI3NzA2LjE2NjU2ODE4NDU.*_ga_26FEP9527K*MTY2OTQ2NzM0Mi41LjEuMTY2OTQ2NzYwNC40NS4wLjA.',
      post_url: 'https://static.wikia.nocookie.net/tensei-shitara-slime-datta-ken/images/3/3f/Manga_Volume_9_JP.jpg',
      postText: '9th volume',),
    Tweet(
      posttime: ' 30s ago',
      avatar_url:
         'https://cdn.myanimelist.net/images/characters/8/411564.jpg?_gl=1*1hjhui8*_ga*MjM0MDI3NzA2LjE2NjU2ODE4NDU.*_ga_26FEP9527K*MTY2OTQ2NzM0Mi41LjEuMTY2OTQ2NzYwNC40NS4wLjA.',
      post_url: 'https://static.wikia.nocookie.net/tensei-shitara-slime-datta-ken/images/7/7d/Manga_Volume_8_JP.jpg',
      postText: '8th volume',),
    Tweet(
      posttime: ' 40s ago',
      avatar_url:
         'https://cdn.myanimelist.net/images/characters/8/411564.jpg?_gl=1*1hjhui8*_ga*MjM0MDI3NzA2LjE2NjU2ODE4NDU.*_ga_26FEP9527K*MTY2OTQ2NzM0Mi41LjEuMTY2OTQ2NzYwNC40NS4wLjA.',
      post_url: 'https://static.wikia.nocookie.net/tensei-shitara-slime-datta-ken/images/1/17/Manga_Volume_7_JP.jpg',
      postText: '7th volume',),
    Tweet(
      posttime: ' 50s ago',
      avatar_url:
         'https://cdn.myanimelist.net/images/characters/8/411564.jpg?_gl=1*1hjhui8*_ga*MjM0MDI3NzA2LjE2NjU2ODE4NDU.*_ga_26FEP9527K*MTY2OTQ2NzM0Mi41LjEuMTY2OTQ2NzYwNC40NS4wLjA.',
      post_url: 'https://static.wikia.nocookie.net/tensei-shitara-slime-datta-ken/images/4/4e/Manga_Volume_6_JP.jpg',
      postText: '6th volume',),
    Tweet(
      posttime: ' 1 minute ago',
      avatar_url:
         'https://cdn.myanimelist.net/images/characters/8/411564.jpg?_gl=1*1hjhui8*_ga*MjM0MDI3NzA2LjE2NjU2ODE4NDU.*_ga_26FEP9527K*MTY2OTQ2NzM0Mi41LjEuMTY2OTQ2NzYwNC40NS4wLjA.',
      post_url: 'https://static.wikia.nocookie.net/tensei-shitara-slime-datta-ken/images/9/9c/Manga_Volume_5_JP.jpg',
      postText: '5th volume',),
    Tweet(
      posttime: ' 1 hour ago',
      avatar_url:
         'https://cdn.myanimelist.net/images/characters/8/411564.jpg?_gl=1*1hjhui8*_ga*MjM0MDI3NzA2LjE2NjU2ODE4NDU.*_ga_26FEP9527K*MTY2OTQ2NzM0Mi41LjEuMTY2OTQ2NzYwNC40NS4wLjA.',
      post_url: 'https://static.wikia.nocookie.net/tensei-shitara-slime-datta-ken/images/d/d7/Manga_Volume_4_JP.jpg',
      postText: '4th volume',),
    Tweet(
      posttime: ' 3 hours ago',
      avatar_url:
         'https://cdn.myanimelist.net/images/characters/8/411564.jpg?_gl=1*1hjhui8*_ga*MjM0MDI3NzA2LjE2NjU2ODE4NDU.*_ga_26FEP9527K*MTY2OTQ2NzM0Mi41LjEuMTY2OTQ2NzYwNC40NS4wLjA.',
      post_url: 'https://static.wikia.nocookie.net/tensei-shitara-slime-datta-ken/images/5/59/Manga_Volume_3_JP.jpg',
      postText: '3th volume',),
    Tweet(
      posttime: ' 4 hours ago',
      avatar_url:
         'https://cdn.myanimelist.net/images/characters/8/411564.jpg?_gl=1*1hjhui8*_ga*MjM0MDI3NzA2LjE2NjU2ODE4NDU.*_ga_26FEP9527K*MTY2OTQ2NzM0Mi41LjEuMTY2OTQ2NzYwNC40NS4wLjA.',
      post_url: 'https://static.wikia.nocookie.net/tensei-shitara-slime-datta-ken/images/c/c5/Manga_Volume_2_JP.jpg',
      postText: '2nd volume',),
    Tweet(
      posttime: ' 1 day ago',
      avatar_url:
         'https://cdn.myanimelist.net/images/characters/8/411564.jpg?_gl=1*1hjhui8*_ga*MjM0MDI3NzA2LjE2NjU2ODE4NDU.*_ga_26FEP9527K*MTY2OTQ2NzM0Mi41LjEuMTY2OTQ2NzYwNC40NS4wLjA.',
      post_url: 'https://static.wikia.nocookie.net/tensei-shitara-slime-datta-ken/images/5/53/Manga_Volume_1_JP.jpg',
      postText: '1st volume',),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(10.0),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://cdn.myanimelist.net/images/characters/8/411564.jpg?_gl=1*1hjhui8*_ga*MjM0MDI3NzA2LjE2NjU2ODE4NDU.*_ga_26FEP9527K*MTY2OTQ2NzM0Mi41LjEuMTY2OTQ2NzYwNC40NS4wLjA.'),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Home",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconButton(
              Icons.home,
              Colors.grey,
            ),
            buildIconButton(
              Icons.safety_check_outlined,
              Colors.grey,
            ),
            buildIconButton(
              Icons.notifications_outlined,
              Colors.grey,
            ),
            buildIconButton(
              Icons.email_outlined,
              Colors.grey,
            ),
          ],
        ),
      ),
      body: listOfTweets(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.pen),
        onPressed: () {
          setState(() {
            //tweetList.add(Tweet());
            tweetList.insert(
                0, 
                Tweet(
                  posttime: ' NOW',
                  avatar_url:
                    'https://cdn.myanimelist.net/images/characters/8/411564.jpg?_gl=1*1hjhui8*_ga*MjM0MDI3NzA2LjE2NjU2ODE4NDU.*_ga_26FEP9527K*MTY2OTQ2NzM0Mi41LjEuMTY2OTQ2NzYwNC40NS4wLjA.',
                  post_url: 'https://static.wikia.nocookie.net/tensei-shitara-slime-datta-ken/images/2/22/Anime_Cover.jpg',
                  postText: 'My name is Pongpak Trairattanawaporn. And the title of my most favorite manga and anime is Tensei shitara Slime Datta Ken ( เกิดใหม่ทั้งทีก็เป็นสไลม์ไปซะแล้ว )',
                ));
          });
        },
      ),
    );
  }

  Widget listOfTweets() {
    return Container(
        color: Colors.white,
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return tweetList[index];
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
                  height: 10,
                ),
            itemCount: tweetList.length));
  }

  Widget buildIconButton(IconData icon, Color color) {
    return IconButton(
        icon: Icon(
          icon,
          color: color,
        ),
        onPressed: () {});
  }
}