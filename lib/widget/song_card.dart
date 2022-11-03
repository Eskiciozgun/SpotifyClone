import 'package:flutter/material.dart';

class SongCard extends StatelessWidget {
  final AssetImage image;
  const SongCard({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image(
            image: image,
            width: 140,
            height: 140,
          ),
          Text(
            "Bad Bunny , Drake , Özgün Eskici...",
            style: Theme.of(context).textTheme.caption,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
