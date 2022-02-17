import 'package:facebook1/sc.dart';
import 'package:flutter/material.dart';
import 'package:facebook1/deadline.dart';
void main() {
  runApp(MaterialApp(
    home: NewsFeed(),
    debugShowCheckedModeBanner: false,
  ));
}

class NewsFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    print("home icon");
                  }),
              IconButton(
                  icon: Icon(Icons.person_add_alt),
                  onPressed: () {
                    print("friend request icon");
                  }),
              IconButton(
                  icon: Icon(Icons.video_call),
                  onPressed: () {
                    print("video section icon");
                  }),
              IconButton(
                  icon: Icon(Icons.verified_user),
                  onPressed: () {
                    print("user icon");
                  })
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Card(
            child: Container(
              height: 300,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/IMG_0722.JPG'),
                    ),
                      onTap: (){print("the lisTile is clicked");},
                      title: Text("Rustam Nurhametov"),
                      subtitle: Text("january 14 2022"),
                      trailing: Icon(Icons.more_horiz),
                  ),
                  Text("Hi! My name is Rustam & this is my first app. "
                      "You can even click 'Read more' buttom below!"),
                  SizedBox(height: 16,),
                  Expanded(
                      child: Image.asset(
                        'images/hello world.png',
                      ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          IconButton(icon: Icon(Icons.thumb_up_alt),onPressed:(){},),
                          Text("Like")
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(icon: Icon(Icons.read_more), onPressed: (
                              ){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Deadline()));
                          },),
                          Text("Read more")
                        ],
                      )
                      ,
                      Row(
                        children: [
                          IconButton(icon: Icon(Icons.share), onPressed: (){},),
                          Text("Share")
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
              child: Container(
                height: 300,
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/bc.jpg'),
                      ),
                      onTap: (){print("the lisTile is clicked");},
                      title: Text("brother capital"),
                      subtitle: Text("february 2 2022"),
                      trailing: Icon(Icons.more_horiz),
                    ),
                    Text("bro-capital.com is one of "
                        "islamic investment projects"),
                    SizedBox(height: 16,),
                    Expanded(
                      child: Image.asset(
                        'images/IMG_0901.JPG',
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            IconButton(icon: Icon(Icons.thumb_up_alt),onPressed:(){},),
                            Text("Like")
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(icon: Icon(Icons.read_more), onPressed: (
                                ){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SC()));
                            },),
                            Text("Read more")
                          ],
                        )
                        ,
                        Row(
                          children: [
                            IconButton(icon: Icon(Icons.share), onPressed: (){},),
                            Text("Share")
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
          ),
        ],
      ));
  }
}
