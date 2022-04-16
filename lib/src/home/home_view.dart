import 'package:flutter/material.dart';
import 'package:welcome_to_zimbabwe/src/common/widgets/search_widget.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 64),
            Row(
              children: [
                Flexible(
                  child: Text(
                    'Where Do You Want To Go',
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ),
                SizedBox(width: 64),
              ],
            ),
            SizedBox(height: 16),
            SearchField(),
            SizedBox(height: 16),
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
