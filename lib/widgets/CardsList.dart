import 'package:flutter/material.dart';
import 'package:news_app/Models/CardsModel.dart';
import 'package:news_app/widgets/CardsWidget.dart';

class CardsList extends StatelessWidget {
  const CardsList({super.key});

  final List<CardsModel> Cards_List = const [
    CardsModel(img: 'assets/bus.png', name: 'Business'),
    CardsModel(img: 'assets/sports.png', name: 'Sports'),
    CardsModel(img: 'assets/enter.png', name: 'Entertainment'),
    CardsModel(img: 'assets/heal.png', name: 'Health'),
    CardsModel(img: 'assets/sci.jpg', name: 'Science'),
    CardsModel(img: 'assets/tec.png', name: 'Technology'),
    CardsModel(img: 'assets/general.png', name: 'General'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      width: double.infinity,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: Cards_List.length,
        itemBuilder: (context, index) {
          return CardsWidgets(Crd: Cards_List[index]);
        },
      ),
    );
  }
}
