import 'package:flutter/material.dart';
import 'package:twitter_clone/Custom Icons/twitter_icons.dart' as custom;

class Post extends StatelessWidget {
  Post({this.profileImage, this.name, this.userName, this.time, this.sentence, this.image, this.comments, this.retweets, this.likes, this.shares});
  final profileImage;
  final name;
  final userName;
  final time;
  final sentence;
  final image;
  final comments;
  final retweets;
  final likes;
  final shares;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 22.0,
              backgroundColor: Colors.black26,
              backgroundImage: NetworkImage(profileImage),
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                           Text(name, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0, color: Colors.black),),
                           Text(' @$userName . ', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0, color: Colors.black54),),
                           Text(time, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0, color: Colors.black54),),
                        ],
                      ),
                      Icon(Icons.keyboard_arrow_down_outlined, size: 20.0, color: Colors.black54)
                    ],
                  ),
                  SizedBox(width: 515.0,
                    child: Text(sentence, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0, color: Colors.black87),),
                  ),
                  SizedBox(height: 8.0),

                  (image!='')?
                  SizedBox(height: 280.0, width: 520.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.network(image, fit: BoxFit.cover,),
                    ),
                  ):SizedBox(),

                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(custom.Twitter.lnr_bubble, size: 18.0, color: Colors.black54),
                          SizedBox(width: 10.0,),
                          Text(comments, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.0, color: Colors.black87),)
                        ],
                      ),
                      SizedBox(width: 100.0,),
                      Row(
                        children: [
                          Icon(custom.Twitter.lnr_sync, size: 18.0, color: Colors.black54),
                          SizedBox(width: 10.0,),
                          Text(retweets, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.0, color: Colors.black87),)
                        ],
                      ),
                      SizedBox(width: 100.0,),
                      Row(
                        children: [
                          Icon(custom.Twitter.lnr_heart, size: 18.0, color: Colors.black54),
                          SizedBox(width: 10.0,),
                          Text(likes, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.0, color: Colors.black87),)
                        ],
                      ),
                      SizedBox(width: 100.0,),
                      Row(
                        children: [
                          Icon(custom.Twitter.lnr_upload, size: 18.0, color: Colors.black54),
                          SizedBox(width: 10.0,),
                          Text(shares, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.0, color: Colors.black87),)
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
