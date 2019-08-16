import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:global_wars/components/unit_card/unit_card.dart';
import 'package:global_wars/models/play_card/play_card_data.dart';

class UnitsCarousel extends StatelessWidget {
  const UnitsCarousel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return UnitCard(index);
        },
        index: 0,
        itemCount: playCardData.length,
        control: SwiperControl(),
      ),
    );
  }
}
