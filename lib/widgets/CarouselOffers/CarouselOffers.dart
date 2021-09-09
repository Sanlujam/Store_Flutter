import 'package:flutter/material.dart';
import 'package:store/Widgets/CarouselOffers/CarouselOffersView.dart';

class CarouselOffers extends StatefulWidget {
  CarouselOffers({Key? key}) : super(key: key);

  @override
  _CarouselOffersState createState() => _CarouselOffersState();
}

class _CarouselOffersState extends State<CarouselOffers> {
  @override
  Widget build(BuildContext context) {
    return CarouselOffersView();
  }
}
