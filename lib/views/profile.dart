import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  _LibraryViewState createState() => _LibraryViewState();
}

class _LibraryViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 22.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(
                  "https://scontent.fteq3-2.fna.fbcdn.net/v/t39.30808-6/312594789_3381091735469958_2853770066302804204_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=TCxw_p1ruIAAX8W8FQT&_nc_ht=scontent.fteq3-2.fna&oh=00_AfCPOvwqB37RKDYb-jpyRQsjL-h6kLNk5fp3sCL-kAsUhQ&oe=636861B1"),
            ),
            SizedBox(height: 20.0),
            Text(
              "Özgün Eskioğlu",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "501",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Müzik",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "20k",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Takipçiler",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "1.2k",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Takip Ettikleri",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(22.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  child: Text(
                    "Profili Düzenle",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
