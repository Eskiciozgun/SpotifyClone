import 'package:flutter/material.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({Key? key}) : super(key: key);

  @override
  _AlbumViewState createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  late ScrollController scrollController;
  double imageSize = 0;
  double initialSize = 240;
  double containerHeight = 500;
  double containerinitalHeight = 500;
  @override
  void initState() {
    imageSize = initialSize;
    scrollController = ScrollController()
      ..addListener(() {
        imageSize = initialSize - scrollController.offset;
        if (imageSize < 0) {
          imageSize = 0;
        }
        containerHeight = containerinitalHeight + scrollController.offset;
        if (containerHeight < 0) {
          containerHeight = 0;
        }
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: containerHeight,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            color: Colors.pink,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.5),
                        offset: Offset(0, 20),
                        blurRadius: 32,
                        spreadRadius: 16,
                      ),
                    ]),
                    child: Image(
                      image: AssetImage("asset/album2.jpg"),
                      width: imageSize,
                      height: imageSize,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              controller: scrollController,
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    clipBehavior: Clip.none,
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(1),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          SizedBox(
                            height: initialSize,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage("asset/logo.png"),
                                      width: 32,
                                      height: 32,
                                    ),
                                    SizedBox(width: 8),
                                    Text("Spotify"),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "1,213,151 likes 5h 3m",
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                SizedBox(height: 10),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.favorite),
                                        SizedBox(width: 16),
                                        Icon(Icons.more_horiz),
                                      ],
                                    ),
                                    Positioned(
                                      right: 0,
                                      bottom: 0,
                                      child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          Container(
                                            width: 64,
                                            height: 64,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xff14D860),
                                            ),
                                            child: Icon(
                                              Icons.play_arrow,
                                              size: 40,
                                            ),
                                          ),
                                          Container(
                                            width: 24,
                                            height: 24,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                            ),
                                            child: Icon(
                                              Icons.shuffle,
                                              color: Colors.black,
                                              size: 16,
                                            ),
                                          )
                                        ],
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
                  Container(
                    color: Colors.black,
                    height: 1000,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
