import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tweet extends StatelessWidget {
  final String avatar_url;
  final String post_url;
  final String postText;
  final String posttime;
  const Tweet({super.key, required this.avatar_url, required this.post_url, required this.postText, required this.posttime});

  @override
  Widget build(BuildContext context) {
    return tweet();
  }

  Widget tweet() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        tweetAvatar(),
        tweetBody(),
      ],
    );
  }

  Widget tweetBody() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tweetHeader(),
          tweetImage(postText),
          tweetButton(),
        ],
      ),
    );
  }

  Widget tweetText(String text) {
    return Text(text);
  }

  Widget tweetImage(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(
          height: 10.0, width: 10.0,
        ),
        Image(width: 200.0, image: NetworkImage(post_url)),
      ],
      
    );
  }

  Widget tweetButton() {
    return Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0, right: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          tweetIconButton(FontAwesomeIcons.message, "22k"),
          tweetIconButton(FontAwesomeIcons.retweet, ""),
          tweetIconButton(FontAwesomeIcons.heart, "122k"),
          tweetIconButton(FontAwesomeIcons.share, ""),
        ],
      ),
    );
  }

  Widget tweetIconButton(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.grey,
          size: 18.0,
        ),
        Container(
          margin: EdgeInsets.only(left: 6.0),
          child: Text(
            text,
            style: TextStyle(color: Colors.grey, fontSize: 14.0),
          ),
        )
      ],
    );
  }

  Widget tweetHeader() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 5.0),
          child: Text(
            "Tensei shitara Slime Datta Ken",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          "@1620900298",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        Text(
          (posttime),
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.angleDown,
            size: 10.0,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget tweetAvatar() {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(avatar_url),
          ),
        ],
      ),
    );
  }

  Widget buildIconButton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: () {},
    );
  }
}
