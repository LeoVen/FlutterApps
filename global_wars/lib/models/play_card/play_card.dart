import 'package:global_wars/models/play_card/play_card_types.dart';

class PlayCard {
  int id;
  String name;
  String imageFileName;
  String description;
  PlayCardType cardType;
  PlayCardSubType cardSubType;
  PlayCardRarity cardRarity;

  var stats = List<int>(PlayCardStats.values.length);
  var costs = List<int>(PlayCardCosts.values.length);
  var effectiveness = List<PlayCardEffectiveness>(PlayCardType.values.length);
  List<PlayCardAbility> abilities;

  PlayCard(
      {this.id,
      this.name,
      this.imageFileName = "noimage",
      this.description,
      this.cardType,
      this.cardSubType,
      this.cardRarity,
      this.stats,
      this.costs,
      this.effectiveness});
}
