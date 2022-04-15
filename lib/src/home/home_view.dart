import 'package:flutter/material.dart';
import 'package:welcome_to_zimbabwe/src/home/widgets/home_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static const String routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  HomeCard(
                    imageUrl: 'assets/images/vic_falls.jpg',
                    title: 'Victoria Falls',
                    subtitle: 'One of the seven wonders of the world',
                    favourite: true,
                    toggleFavourite: () {},
                  ),
                  SizedBox(width: 16),
                  HomeCard(
                    imageUrl: 'assets/images/great_zimbabwe.jpg',
                    title: 'Great Zimbabwe',
                    subtitle: 'Some weird ruins',
                    favourite: false,
                    toggleFavourite: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
