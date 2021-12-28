import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  final recipeTrendTags = const <String>[
    'Healthy',
    'Vegan',
    'Carrots',
    'Greens',
    'Wheat',
    'Pescetarian',
    'Mint',
    'Lemongrass',
    'Salad',
    'Water',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // padding: const EdgeInsets.all(16.0),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20.0),
          image: const DecorationImage(
            image: AssetImage('assets/mag2.png'),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        clipBehavior: Clip.antiAlias,
        child: Container(
          padding: const EdgeInsets.all(16),
          color: Colors.black.withOpacity(0.6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.book,
                size: 30,
              ),
              const SizedBox(height: 8),
              Text(
                'Recipe Trends',
                style: FooderlichTheme.darkTextTheme.headline2,
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 12,
                  children: [
                    ...recipeTrendTags.map(
                      (e) => Container(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        padding: const EdgeInsets.symmetric(
                          vertical: 7.5,
                          horizontal: 15,
                        ),
                        decoration: ShapeDecoration(
                          color: Colors.grey[600],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Text(
                          e,
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
