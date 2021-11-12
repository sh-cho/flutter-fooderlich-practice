import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  final category = "Editor's choice";
  final title = 'The Art of Dough';
  final description = 'Learn to make the perfect bread.';
  final chef = 'Vincent Joe';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
          children: [
            Text(category, style: FooderlichTheme.darkTextTheme.bodyText1),
            Positioned(
              child:
                  Text(title, style: FooderlichTheme.darkTextTheme.headline5),
              top: 20,
            ),
            Positioned(
              child: Text(description,
                  style: FooderlichTheme.darkTextTheme.bodyText1),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(chef, style: FooderlichTheme.darkTextTheme.bodyText1),
              bottom: 10,
              right: 0,
            ),
          ],
        ),
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag1.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}