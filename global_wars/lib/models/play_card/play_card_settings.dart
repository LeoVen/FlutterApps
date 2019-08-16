import 'package:flutter/material.dart';
import 'package:global_wars/models/play_card/play_card_types.dart';

class PlayCardSettings {
  // Rarity
  static final colorRarity = {
    PlayCardRarity.common: Colors.grey,
    PlayCardRarity.uncommon: Colors.blue,
    PlayCardRarity.rare: Colors.purple,
    PlayCardRarity.legendary: Colors.amber,
  };

  // Effectiveness
  static final colorEffectiveness = {
    PlayCardEffectiveness.noEffect: Colors.red[800],
    PlayCardEffectiveness.normalEffect: Colors.blue[800],
    PlayCardEffectiveness.goodEffect: Colors.green[800],
    PlayCardEffectiveness.highEffect: Colors.amber[800],
  };

  static final effectIconsByIndex = typeIconsByIndex;

  static final typeIcons = {
    PlayCardType.highAir: Icons.cloud,
    PlayCardType.lowAir: Icons.filter_drama,
    PlayCardType.ground: Icons.landscape,
    PlayCardType.water: Icons.opacity,
    PlayCardType.underWater: Icons.bubble_chart,
  };

  static final typeIconsByIndex = [
    typeIcons[PlayCardType.highAir],
    typeIcons[PlayCardType.lowAir],
    typeIcons[PlayCardType.ground],
    typeIcons[PlayCardType.water],
    typeIcons[PlayCardType.underWater],
  ];

  // Temporary
  // PlayCard subtype icons
  static final subtypeIcons = {
    PlayCardSubType.artillery: Icon(Icons.accessibility_new),
    PlayCardSubType.boat: Icon(Icons.ac_unit),
    PlayCardSubType.bomber: Icon(Icons.label),
    PlayCardSubType.helicopter: Icon(Icons.healing),
    PlayCardSubType.infantry: Icon(Icons.group),
    PlayCardSubType.plane: Icon(Icons.airplanemode_active),
    PlayCardSubType.submarine: Icon(Icons.fiber_smart_record),
  };

  // Stats
  static final nameStats = {
    PlayCardStats.hitpoints: "Hitpoints",
    PlayCardStats.armor: "Armor",
    PlayCardStats.firepower: "Firepower",
    PlayCardStats.precision: "Precision",
    PlayCardStats.evasion: "Evasion",
  };

  static const minStat = 0;
  static const maxStat = 10;

  // PlayCard cost
  static final costIcons = {
    PlayCardCosts.manpower: Icon(Icons.person, color: Colors.pink[200]),
    PlayCardCosts.equipment: Icon(Icons.build, color: Colors.brown),
    PlayCardCosts.metal: Icon(Icons.dehaze, color: Colors.blueGrey[700]),
    PlayCardCosts.electronics:
        Icon(Icons.settings_input_component, color: Colors.red[400]),
  };

  static final costIconsByIndex = [
    costIcons[PlayCardCosts.manpower],
    costIcons[PlayCardCosts.equipment],
    costIcons[PlayCardCosts.metal],
    costIcons[PlayCardCosts.electronics],
  ];

  static final nameCosts = {
    PlayCardCosts.manpower: "Manpower",
    PlayCardCosts.equipment: "Equipment",
    PlayCardCosts.metal: "Metal",
    PlayCardCosts.electronics: "Electronics",
  };

  static final nameCostsByIndex = [
    nameCosts[PlayCardCosts.manpower],
    nameCosts[PlayCardCosts.equipment],
    nameCosts[PlayCardCosts.metal],
    nameCosts[PlayCardCosts.electronics],
  ];
}
