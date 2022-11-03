import 'package:flutter/material.dart';
import 'package:spotify_clone/widget/album_card.dart';
import 'package:spotify_clone/views/album_view.dart';
import 'package:spotify_clone/widget/song_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            decoration: BoxDecoration(color: Color(0xFf1C7A74)),
          ),
          SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(.9),
                      Colors.black.withOpacity(1),
                      Colors.black.withOpacity(1),
                      Colors.black.withOpacity(1),
                    ],
                  ),
                ),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Şuan Çalınan",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Row(
                              children: [
                                Icon(Icons.history),
                                SizedBox(width: 20),
                                Icon(Icons.settings),
                              ],
                            )
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            AlbumCard(
                              label: "Motivasyon Şarkıları",
                              image: AssetImage("asset/album0.jpg"),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AlbumView(),
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            AlbumCard(
                              label: "Oyun oynarken dinle",
                              image: AssetImage("asset/album1.jpg"),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AlbumView(),
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            AlbumCard(
                              label: "Sporda Dinlemelik",
                              image: AssetImage("asset/album2.jpg"),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AlbumView(),
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            AlbumCard(
                              label: "Rap için doğmuş",
                              image: AssetImage("asset/album3.jpg"),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AlbumView()),
                                );
                              },
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            AlbumCard(
                              label: "Klasik Müzikal",
                              image: AssetImage("asset/album4.jpg"),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AlbumView(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 32),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "İyi Akşamlar",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                RowAlbumCard(
                                  label: "Top 50 - Global",
                                  image: AssetImage("asset/album5.jpg"),
                                ),
                                SizedBox(width: 16),
                                RowAlbumCard(
                                  label: "Top 50 - Türkiye",
                                  image: AssetImage("asset/album6.jpg"),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                RowAlbumCard(
                                  label: "Calvin Harris Mix",
                                  image: AssetImage("asset/album7.jpg"),
                                ),
                                SizedBox(width: 16),
                                RowAlbumCard(
                                  label: "Güne Hızlı Başla",
                                  image: AssetImage("asset/album8.jpg"),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                RowAlbumCard(
                                  label: "İş Yorgunluğu",
                                  image: AssetImage("asset/album9.jpg"),
                                ),
                                SizedBox(width: 16),
                                RowAlbumCard(
                                  label: "Yatmadan Önce",
                                  image: AssetImage("asset/album10.jpg"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Dinlediklerine göre bir liste hazırladık.",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Row(
                              children: [
                                SongCard(image: AssetImage("asset/album6.jpg")),
                                SizedBox(width: 16),
                                SongCard(
                                    image: AssetImage("asset/album12.jpg")),
                                SizedBox(width: 16),
                                SongCard(
                                    image: AssetImage("asset/album13.jpg")),
                                SizedBox(width: 16),
                                SongCard(
                                    image: AssetImage("asset/album14.jpg")),
                                SizedBox(width: 16),
                                SongCard(
                                    image: AssetImage("asset/album15.jpg")),
                                SizedBox(width: 16),
                                SongCard(
                                    image: AssetImage("asset/album10.jpg")),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Sana önerdiklerimiz.",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Row(
                              children: [
                                SongCard(image: AssetImage("asset/album6.jpg")),
                                SizedBox(width: 16),
                                SongCard(
                                    image: AssetImage("asset/album12.jpg")),
                                SizedBox(width: 16),
                                SongCard(
                                    image: AssetImage("asset/album13.jpg")),
                                SizedBox(width: 16),
                                SongCard(
                                    image: AssetImage("asset/album14.jpg")),
                                SizedBox(width: 16),
                                SongCard(
                                    image: AssetImage("asset/album15.jpg")),
                                SizedBox(width: 16),
                                SongCard(
                                    image: AssetImage("asset/album10.jpg")),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class RowAlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  const RowAlbumCard({
    Key? key,
    required this.image,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white10, borderRadius: BorderRadius.circular(4)),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image(
              image: image,
              height: 48,
              width: 48,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 8,
            ),
            Text(label),
          ],
        ),
      ),
    );
  }
}
