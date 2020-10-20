import 'package:flutter/material.dart';
import 'Extras/HomeExtras.dart';
import 'Contents/HomeContents.dart';
import 'Custom Icons/twitter_icons.dart' as custom;

class MainPage extends StatelessWidget {
  
  // FOR EACH TAB(Home, Explore, Notifications...)
  tab(icon, text, iconSize) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: iconSize, color: Colors.black,),
            horiSpace(),
            Text(text, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),)
          ],
        ),
      ),
    );
  }

  horiSpace() => SizedBox(width: 20.0); // HORIZONTAL SPACE OF 20
  vertSpace() => SizedBox(height: 5.0); // VERTICAL SPACE OF 5

  // THIS IS THE LEFT SECTION OF TWITTER
  allTabs(){
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0, top: 10.0),
                child: SizedBox(height: 28.0, width: 28.0,
                  child: Image.asset('assets/twitter_logo.png')
                ),
              ),
              SizedBox(height: 15.0,),
              Container(
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(custom.Twitter.lnr_home, size: 25.0, color: Color(0xFF1DA1F2),),
                      horiSpace(),
                      Text('Home', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0, color: Color(0xFF1DA1F2)),)
                    ],
                  ),
                ),
              ),
              vertSpace(),
              tab(custom.Twitter.lnr_crop, 'Explore', 25.0),
              vertSpace(),
              tab(custom.Twitter.lnr_alarm, 'Notifications', 24.0),
              vertSpace(), 
              tab(custom.Twitter.lnr_envelope, 'Messages', 24.0),
              vertSpace(),
              tab(custom.Twitter.lnr_bookmark, 'Bookmarks', 22.0),
              vertSpace(),
              tab(custom.Twitter.lnr_file_empty, 'Lists', 22.0),
              vertSpace(),
              tab(custom.Twitter.lnr_user, 'Profile', 20.0),
              vertSpace(),
              tab(custom.Twitter.lnr_menu_circle, 'More', 24.0),
              SizedBox(height: 10.0),
              Container(
                height: 45.0,
                width: 230.0,
                decoration: BoxDecoration(
                  color: Color(0xFF1DA1F2),
                  borderRadius: BorderRadius.circular(30.0)
                ),
                child: Center(
                  child: Text('Tweet', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0, color: Colors.white),),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/avatar.jpg'),
                    ),
                    SizedBox(width: 8.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Hardik kumar', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0, color: Colors.black),),
                        Text('@tweet_Hardikkr', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0, color: Colors.black54),)
                      ],
                    ),
                  ],
                ),
                Icon(custom.Twitter.lnr_chevron_down, size: 16.0,)
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 135.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              // LEFT SECTION OF TWITTER(which has same tabs throughout)
              Container(
                width: 260.0,
                child: allTabs()
              ),

              // [CONTENTS] MIDDLE SECTION OF TWITTER(for posts and others)
              Container(
                decoration: BoxDecoration(
                  border: Border.symmetric(vertical: BorderSide(width: 0.1, color: Colors.black))
                ),
                width: 600.0,
                child: HomeContents(),
              ),
              
              // [EXTRAS] RIGHT SECTION OF TWITTER(for new updates and news)
              Container(
                width: 380.0,
                child: HomeExtras(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
