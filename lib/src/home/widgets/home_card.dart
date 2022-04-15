import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.favourite,
    required this.toggleFavourite,
  }) : super(key: key);

  final String imageUrl;
  final String title;
  final String subtitle;
  final bool favourite;
  final VoidCallback toggleFavourite;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4 / 5,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: imageUrl.contains('http')
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black12, Colors.black54],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          subtitle,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.fade,
                          maxLines: 1,
                          softWrap: false,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: toggleFavourite,
                    icon: Icon(
                      Icons.favorite,
                      color: favourite
                          ? Theme.of(context).primaryColor
                          : Colors.grey,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
