import 'package:facebook/models/post_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   List<Posts> myPosts = [
    Posts(
        profileImage: 'https://c4.wallpaperflare.com/wallpaper/828/937/102/art-beautiful-girl-hair-wallpaper-preview.jpg',
        userName: 'Hajer Salah',
        time: '7 h',
        descOfPost: 'hello Every Body',
        postImage: 'https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg',
        likedBy: 'Rahma Ahmed',
        numOfLikes: '126',
        numOfComments: '67'),
    Posts(
        profileImage: 'https://c4.wallpaperflare.com/wallpaper/828/937/102/art-beautiful-girl-hair-wallpaper-preview.jpg',
        userName: 'Hajer Salah',
        time: '7 h',
        descOfPost: 'hello Every Body',
        postImage: 'https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg',
        likedBy: 'Rahma Ahmed',
        numOfLikes: '126',
        numOfComments: '67'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
              buildPostItem(),
            ])

        )
    );
  }

  Widget buildPostItem() {
    return Expanded(
      child:
      ListView.builder(
          itemCount: myPosts.length,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 5, right: 5, top: 10),
                    child: Row(children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                        myPosts[index].profileImage
                    ),
                      ),
                       SizedBox(width: 5),
                      Column(children: [
                        Text(
                          myPosts[index].userName,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(children: [
                          Text(myPosts[index].time),
                          Text(' . '),
                          Icon(Icons.public, size: 15,),
                        ],),
                      ]),
                      Spacer(),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.more_horiz)),
                    ]),
                  ),
                  SizedBox(height: 2,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(myPosts[index].descOfPost),
                  ),
                  Image.network(
                    myPosts[index].postImage,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),

                  Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(
                          children: [
                            CircleAvatar(
                              radius: 10,
                              backgroundImage:
                              NetworkImage(
                                'https://st4.depositphotos.com/16602560/28660/v/450/depositphotos_286608730-stock-illustration-thumb-up-icon.jpg',
                              ),
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundImage:
                              NetworkImage(
                                'https://w7.pngwing.com/pngs/380/99/png-transparent-facebook-haha-hd-logo.png',
                              ),
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundImage:
                              NetworkImage(
                                'https://www.userflow.nl/images/Facebook/Love-Facebook-Emoticon-reactions-icon-250px-PNG.png',
                              ),
                            ),
                            SizedBox(width: 4,),
                            Text(myPosts[index].numOfLikes),
                            Spacer(),
                            Text('${myPosts[index].numOfComments} comments'),
                          ])
                  ),
                  Divider(height: 1,),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                    child: Icon(
                                      Icons.favorite_border, size: 20,)),
                                TextSpan(
                                    text: " Love",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black)
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                    child: Icon(
                                      (Icons.message), size: 20,)
                                ),
                                TextSpan(
                                    text: " Comment",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: 10,),
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                    child: Icon(Icons.share, size: 20,)),
                                TextSpan(
                                    text: " Share",
                                    style: TextStyle(color: Colors.black,
                                        fontSize: 15)
                                ),
                              ],
                            ),
                          )

                        ]),
                  ),
                  Divider(height: 1,),


                ],
              ),
            );
          }),
    );
  }

  }



