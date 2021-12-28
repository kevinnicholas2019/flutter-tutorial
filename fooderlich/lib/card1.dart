import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  final category = "Editor's Choice";
  final title = 'The Art of Dough';
  final description = 'Learn to make the perfect bread';
  final chef = 'Kevin Nicholas';

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
          borderRadius: BorderRadius.circular(20.0),
          image: const DecorationImage(
            image: AssetImage('assets/mag1.png'),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Column(
              children: [
                Text(
                  category,
                  style: FooderlichTheme.darkTextTheme.bodyText1,
                ),
                const SizedBox(
                  height: 7.5,
                ),
                Text(
                  title,
                  style: FooderlichTheme.darkTextTheme.headline2,
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.stretch,
            ),
            const Spacer(),
            Column(
              children: [
                Text(
                  description,
                  textAlign: TextAlign.end,
                  style: FooderlichTheme.darkTextTheme.bodyText1,
                ),
                const SizedBox(
                  height: 7.5,
                ),
                Text(
                  chef,
                  textAlign: TextAlign.end,
                  style: FooderlichTheme.darkTextTheme.bodyText1,
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.stretch,
            ),
          ],
        ),
      ),
    );
  }
}
