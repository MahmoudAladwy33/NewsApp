import 'package:flutter/material.dart';
import 'package:news_app/widgets/NewsList_Builder.dart';

class CardsView extends StatelessWidget {
  const CardsView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            NewsListBuilder(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}
