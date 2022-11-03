import 'package:flutter/material.dart';
import 'package:spotify_clone/views/album_view.dart';

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  final Function onTap;
  const AlbumCard({
    Key? key,
    required this.image,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AlbumView(),
          ),
        );
      },
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: image,
                width: 100,
                height: 120,
              ),
              SizedBox(
                height: 1,
              ),
              Text(label),
            ],
          ),
        ],
      ),
    );
  }
}
