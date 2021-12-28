import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  final author = 'Mike Katz';
  final position = 'Smoothie Connoisseur';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Theme.of(context).appBarTheme.foregroundColor,
          borderRadius: BorderRadius.circular(20.0),
          image: const DecorationImage(
            image: AssetImage('assets/mag5.png'),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 16 * 3.25,
                  height: 16 * 3.25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 4),
                    image: const DecorationImage(
                      image: AssetImage('assets/author_katz.jpeg'),
                    ),
                    color: Colors.red,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  children: [
                    Text(
                      author,
                      style: FooderlichTheme.lightTextTheme.headline2,
                    ),
                    Text(
                      author,
                      style: FooderlichTheme.lightTextTheme.headline3,
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    print('like');
                  },
                  icon: const Icon(Icons.favorite_border),
                  iconSize: 30,
                  color: Colors.grey[400],
                )
              ],
            ),
            Positioned(
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  'Smoothies',
                  style: FooderlichTheme.lightTextTheme.headline1,
                ),
              ),
              bottom: 60,
            ),
            Positioned(
              child: Text(
                'Recipe',
                style: FooderlichTheme.lightTextTheme.headline1,
              ),
              right: 0,
              bottom: 0,
            ),
          ],
        ),
      ),
    );
  }
}
