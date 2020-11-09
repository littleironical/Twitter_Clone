import 'package:flutter/material.dart';
import 'package:twitter_clone/Custom Icons/twitter_icons.dart' as custom;

class HomeExtras extends StatelessWidget {

topBox(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Text('What\'s happening', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0, color: Colors.black)),
      ),

      Divider(height: 0.0, color: Colors.black, thickness: 0.15),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('IPL 2020 . LIVE', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.0, color: Colors.black54),),
                SizedBox(width: 230.0,
                  child: Text('IPL: Rajasthan Royals beat Chennai Super Kings by seven wickets', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15.0, color: Colors.black),),
                )
              ],
            ),
            SizedBox(height: 65.0, width: 65.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network('https://pbs.twimg.com/semantic_core_img/1310500592469516288/AmHzEYWl?format=jpg&name=240x240', fit: BoxFit.cover,),
              ),
            ),
          ],
        ),
      ),

      Divider(height: 0.0, color: Colors.black, thickness: 0.15),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('#vivoV20', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15.0, color: Colors.black),),
              SizedBox(
                child: Text('Available now with 44 MP Eye AutoFocus Selfie & Slim Design', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.0, color: Colors.black54),),
              )
            ],
          ),
        ),
      ),

      Divider(height: 0.0, color: Colors.black, thickness: 0.15),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('COVID-19 . LIVE', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.0, color: Colors.black54),),
                SizedBox(width: 230.0,
                  child: Text('COVID-19 in India', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15.0, color: Colors.black),),
                )
              ],
            ),
            SizedBox(height: 65.0, width: 65.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                  child: Image.network('https://pbs.twimg.com/semantic_core_img/1255575536824233984/CiLy4der?format=jpg&name=240x240', fit: BoxFit.cover,),
              ),
            ),
          ],
        ),
      ),

      Divider(height: 0.0, color: Colors.black, thickness: 0.15),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Politics . Trending', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.0, color: Colors.black54),),
                Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black54, size: 20.0)
              ],
            ),
            Text('Dislike', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15.0, color: Colors.black),),
            SizedBox(height: 10.0),
            Text('40.1K Tweets', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.0, color: Colors.black54),),
          ],
        ),
      ),
                    
      Divider(height: 0.0, color: Colors.black, thickness: 0.15),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Trending in India', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.0, color: Colors.black54),),
                Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black54, size: 20.0,)
              ],
            ),
            Text('#DurexInvisible', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15.0, color: Colors.black),),
            SizedBox(height: 10.0),
            Text('3,763 Tweets', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.0, color: Colors.black54),),
          ],
        ),
      ),

      Divider(height: 0.0, color: Colors.black, thickness: 0.15),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Text('Show More', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.0, color: Color(0xFF1DA1F2))),
      ),
    ],
  );
}

bottomBox(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Text('Who to Follow', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0, color: Colors.black)),
      ),
      
      Divider(height: 0.0, color: Colors.black, thickness: 0.15),
      followTab('https://pbs.twimg.com/profile_images/890513269131051008/x41AXaED_200x200.jpg', 'Flutter Daily', 'flutteriodaily'),

      Divider(height: 0.0, color: Colors.black, thickness: 0.15),
      followTab('https://pbs.twimg.com/profile_images/993555605078994945/Yr-pWI4G_200x200.jpg', 'Dart Language', 'dart_lang'),

      Divider(height: 0.0, color: Colors.black, thickness: 0.15),
      followTab('https://pbs.twimg.com/profile_images/1069917354384080896/82l6yd1T_400x400.jpg', 'c💙odemagic', 'codemagicio'),

      Divider(height: 0.0, color: Colors.black, thickness: 0.15),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Text('Show More', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.0, color: Color(0xFF1DA1F2))),
      ),
    ],
  );
}

followTab(displayPicture, name, userName){
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 25.0,
          backgroundImage: NetworkImage(displayPicture),
          backgroundColor: Colors.black26,
        ),
        SizedBox(width: 10.0),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15.0, color: Colors.black),),
                      Text('@$userName', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.0, color: Colors.black54),),
                    ],
                  ),
                  Container(
                    height: 30.0,
                    width: 90.0,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Color(0xFF1DA1F2), style: BorderStyle.solid),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Center(
                      child: Text('Follow', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15.0, color: Color(0xFF1DA1F2)),),
                    ),
                  )
                ],
              ),
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

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.blueGrey[50]
          ),
          height: 45.0,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              children: [
                Icon(custom.Twitter.lnr_magnifier, size: 15.0, color: Colors.black,),
                SizedBox(width: 18.0,),
                Text('Search Twitter', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15.0, color: Colors.black),)
              ],
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 10.0,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.blueGrey[50]
                ),
                child: topBox()
              ), 
              SizedBox(height: 15.0),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.blueGrey[50]
                ),
                child: bottomBox()
              ),
              SizedBox(height: 10.0),

              SizedBox(height: 130.0),
            ],
          ),
        ),
      ),
    );
  }
}