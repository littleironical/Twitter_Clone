import 'package:flutter/material.dart';
import 'package:twitter_clone/Contents/Post%20themes/post.dart';
import 'package:twitter_clone/Custom Icons/twitter_icons.dart' as custom;

class HomeContents extends StatelessWidget {

  _showIcon(icon) => Icon(icon, color: Color(0xFF1DA1F2), size: 20.0,);
  horiSpace() => SizedBox(width: 20.0,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.4,
        title: Text('Home', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0, color: Colors.black)),
        actions: [
          Icon(Icons.star_border, color: Color(0xFF1DA1F2),),
          SizedBox(width: 15.0,),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.symmetric(horizontal: BorderSide(width: 0.15, color: Colors.black)),
                color: Colors.white,
              ),
              height: 118.0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/avatar.jpg'),
                      radius: 24.0,
                    ),
                    SizedBox(width: 15.0),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('What\'s happening?', style: TextStyle(fontSize: 18.0, color: Colors.blueGrey[600])),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  _showIcon(custom.Twitter.lnr_picture),
                                  horiSpace(),
                                  _showIcon(custom.Twitter.lnr_film_play),
                                  horiSpace(),
                                  _showIcon(custom.Twitter.lnr_chart_bars),
                                  horiSpace(),
                                  _showIcon(custom.Twitter.lnr_neutral),
                                  horiSpace(),
                                  _showIcon(custom.Twitter.lnr_calendar_full),
                                ],
                              ),
                              Container(
                                height: 40.0,
                                width: 80.0,
                                  decoration: BoxDecoration(
                                  color: Color(0xFF1DA1F2),
                                  borderRadius: BorderRadius.circular(30.0)
                                ),
                                child: Center(
                                  child: Text('Tweet', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0, color: Colors.white),),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),

            Container(
              decoration: BoxDecoration(
                border: Border.symmetric(horizontal: BorderSide(width: 0.15, color: Colors.black)),
                color: Colors.white,
              ),
              child: Post(
                profileImage: 'https://pbs.twimg.com/profile_images/1316781117605724160/cs46u1j4_400x400.jpg',
                name: 'The Pawan Kumar',
                userName: 'imthepk',
                time: '1h',
                sentence: 'We are Divine enough to ask,\n\nand we are important enough to receive',
                image: '',
                comments: '1',
                retweets: '2',
                likes: '34',
                shares: '',
              ),
            ),

            Container(
              decoration: BoxDecoration(
                border: Border.symmetric(horizontal: BorderSide(width: 0.15, color: Colors.black)),
                color: Colors.white,
              ),
              child: Post(
                profileImage: 'https://pbs.twimg.com/profile_images/1299372025492811776/qzeUcrw3_400x400.jpg',
                name: 'DevFest India',
                userName: 'DevfestIndia',
                time: '2h',
                sentence: 'Missed informations about Day-2 & Day-3 Winners?\nStruggling that how to get the participation certificates?\nWanted to learn the advanced topics of different tracks?\n\nHere you go, visit the link and have the sneak peak of important infos.Smiling face with sunglassesNerd face😎🤓',
                image: 'https://i.ibb.co/G7SjPJP/Eks-EMTXVo-AE3-Ztw.jpg',
                comments: '1',
                retweets: '9',
                likes: '24',
                shares: '',
              ),
            ),

            Container(
              decoration: BoxDecoration(
                border: Border.symmetric(horizontal: BorderSide(width: 0.15, color: Colors.black)),
                color: Colors.white,
              ),
              child: Post(
                profileImage: 'https://pbs.twimg.com/profile_images/1299372025492811776/qzeUcrw3_400x400.jpg',
                name: 'DevFest India',
                userName: 'DevfestIndia',
                time: '5h',
                sentence: 'Missed Day 2 of the Code Concert?Thinking face🤔\n\nTake a deep breathe as you can still learn from the artists of Intermediate track',
                image: 'https://i.ibb.co/VBq4cjg/Ekrp-H4-VMAUf8-Vl.jpg',
                comments: '1',
                retweets: '14',
                likes: '35',
                shares: '',
              ),
            ),

            Container(
              decoration: BoxDecoration(
                border: Border.symmetric(horizontal: BorderSide(width: 0.15, color: Colors.black)),
                color: Colors.white,
              ),
              child: Post(
                profileImage: 'https://pbs.twimg.com/profile_images/1299372025492811776/qzeUcrw3_400x400.jpg',
                name: 'DevFest India',
                userName: 'DevfestIndia',
                time: '7h',
                sentence: 'Missed the sessions by the super cool artists of Day 1 of Code Concert: DevFest IndiaUnamused face😒??\n\nWorry not, we got to covered and here is the video which you may have a look to learn about those basic concepts.',
                image: 'https://i.ibb.co/gPMhpyv/Ekr-Bb-Hp-Vc-AAQs-BV.jpg',
                comments: '2',
                retweets: '16',
                likes: '41',
                shares: '',
              ),
            ),

            Container(
              decoration: BoxDecoration(
                border: Border.symmetric(horizontal: BorderSide(width: 0.15, color: Colors.black)),
                color: Colors.white,
              ),
              child: Post(
                profileImage: 'https://pbs.twimg.com/profile_images/1316781117605724160/cs46u1j4_400x400.jpg',
                name: 'The Pawan Kumar',
                userName: 'imthepk',
                time: '22h',
                sentence: 'There is an old saying "Where there\'s a will there\'s a way".\n\nDevfest India was all about that.\n\nThanks, everyone for joining and making it possible. It was an amazing experience. Loved to be a part of it <3',
                image: '',
                comments: '1',
                retweets: '2',
                likes: '35',
                shares: '',
              ),
            ),

          ],
        ),
      ),
    );
  }
}
