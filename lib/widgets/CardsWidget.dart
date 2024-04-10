import 'package:flutter/material.dart';
import 'package:news_app/Models/CardsModel.dart';
import 'package:news_app/Views/CardsView.dart';

class CardsWidgets extends StatelessWidget {
  const CardsWidgets({required this.Crd});
  final CardsModel Crd;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CardsView(
                category: Crd.name,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(Crd.img),
                fit: BoxFit.fill,
              )),
          child: Center(
            child: Container(
              height: 30,
              width: double.infinity,
              alignment: Alignment.topCenter,
              color: Colors.white54,
              child: Text(
                Crd.name,
                style: TextStyle(
                  color: Color.fromARGB(255, 95, 16, 10),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Acme',
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
