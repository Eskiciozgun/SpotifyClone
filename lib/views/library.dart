import 'package:flutter/material.dart';

class LibraryView extends StatefulWidget {
  const LibraryView({Key? key}) : super(key: key);

  @override
  _LibraryViewState createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(
                        "https://scontent.fteq3-2.fna.fbcdn.net/v/t39.30808-6/312594789_3381091735469958_2853770066302804204_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=TCxw_p1ruIAAX8W8FQT&_nc_ht=scontent.fteq3-2.fna&oh=00_AfCPOvwqB37RKDYb-jpyRQsjL-h6kLNk5fp3sCL-kAsUhQ&oe=636861B1",
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kitaplığın",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Icon(Icons.search),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Icon(Icons.add),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                  ElevatedButton(
                    onPressed: null,
                    child: Text(
                      "Çalma Listeleri",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.white54, width: 2),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: null,
                    child: Text(
                      "Sanatçılar",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.white54, width: 2),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: null,
                    child: Text(
                      "Albümler",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.white54, width: 2),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Icon(Icons.swap_vert),
                        Text("Yakınlarda çalınanlar"),
                        SizedBox(
                          width: 180,
                        ),
                        Icon(Icons.grid_view_outlined)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 90,
                        width: 350,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment(10, 0.0),
                              colors: const [Colors.pink, Colors.tealAccent]),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(top: 10, left: 10),
                                    child: Image.asset("asset/album3.jpg",
                                        height: 70, width: 70)),
                                Container(
                                  margin: EdgeInsets.only(top: 10, right: 50),
                                  child: Text(
                                    "Senin için seçtiklerimiz",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 90,
                        width: 350,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment(15, 0.0),
                              colors: [Colors.orange, Colors.tealAccent]),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(top: 10, left: 10),
                                    child: Image.asset("asset/album3.jpg",
                                        height: 70, width: 70)),
                                Container(
                                  margin: EdgeInsets.only(top: 10, right: 50),
                                  child: Text(
                                    "Senin için seçtiklerimiz",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 90,
                        width: 350,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment(15, 0.0),
                              colors: [Colors.teal, Colors.tealAccent]),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(top: 10, left: 10),
                                    child: Image.asset("asset/album3.jpg",
                                        height: 70, width: 70)),
                                Container(
                                  margin: EdgeInsets.only(top: 10, right: 50),
                                  child: Text(
                                    "Senin için seçtiklerimiz",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 90,
                        width: 350,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment(15, 0.0),
                              colors: [Colors.blue, Colors.tealAccent]),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(top: 10, left: 10),
                                    child: Image.asset("asset/album3.jpg",
                                        height: 70, width: 70)),
                                Container(
                                  margin: EdgeInsets.only(top: 10, right: 50),
                                  child: Text(
                                    "Senin için seçtiklerimiz",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 90,
                        width: 350,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment(15, 0.0),
                              colors: [Colors.blue, Colors.tealAccent]),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(top: 10, left: 10),
                                    child: Image.asset("asset/album3.jpg",
                                        height: 70, width: 70)),
                                Container(
                                  margin: EdgeInsets.only(top: 10, right: 50),
                                  child: Text(
                                    "Senin için seçtiklerimiz",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
