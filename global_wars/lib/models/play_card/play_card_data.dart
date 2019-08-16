import 'package:global_wars/models/play_card/play_card.dart';
import 'package:global_wars/models/play_card/play_card_types.dart';

final playCardData = [
  PlayCard(
    id: 0,
    name: "Infantry",
    imageFileName: "0_infantry",
    description:
        "The infantry is the main unit of any army. Equipped with very basic equipments, varying from rifles sub-machine guns and granades.",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 1, 1, 1],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 1, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 30,
    name: "Light Infantry",
    imageFileName: "30_light_infantry",
    description: "The light infantry is a very fast division. With less equipments these men can wind through the trenches easily.",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [1, 0, 1, 1, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 2, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 31,
    name: "Carbine Infantry",
    imageFileName: "31_carbine_infantry",
    description:
        "The carbine infantry is equipped with a carbine with high damage capabilities. These men can shoot down helicopters.",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.uncommon,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [1, 0, 2, 2, 1],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 2, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 31,
    name: "Machine Gun Infantry",
    description:
        "Equipped with rapid firing guns, these men can rain down bullets on its enemies and pin them in their trenches.",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.uncommon,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 2, 1, 2],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 4, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 1,
    name: "Heavy Infantry",
    imageFileName: "1_heavy_infantry",
    description:
        "The heavy infantry is a version of an infantry that is better equipped and better trained. They can withstand the battlefield for much longer. But it all comes with a cost.",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.uncommon,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 2,
    name: "Modern Infantry",
    imageFileName: "2_modern_infantry",
    description:
        "The best trained and well equipped infantry. With the use of electronics, these men can take down advanced units like tanks, helicopters and even airplanes.",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.rare,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 3,
    name: "Field Artillery",
    imageFileName: "3_field_artillery",
    description:
        "The field artillery is the most basic artillery type. It has high damage but lacks any kind of defense. Also its shots might not be very consistent.",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.artillery,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 4,
    name: "Mobile Artillery",
    imageFileName: "4_mobile_artillery",
    description:
        "The mobile artillery is a walking cannon. Mounted on top of armored tracks, this big guy can be hard to hit. Also can retrieve quite a good punch.",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 5,
    name: "Rocket Artillery",
    imageFileName: "5_rocket_artillery",
    description:
        "The rocket artillery has high damage and high precision due to its rockets, with low armor and evasion making it a true glass cannon.",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.goodEffect,
      PlayCardEffectiveness.highEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 6,
    name: "Tank",
    imageFileName: "6_tank",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 7,
    name: "Heavy Tank",
    imageFileName: "7_heavy_tank",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 8,
    name: "Modern Tank",
    imageFileName: "8_modern_tank",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 9,
    name: "Helicopter",
    imageFileName: "9_helicopter",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 10,
    name: "Attack Helicopter",
    imageFileName: "10_attack_helicopter",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 11,
    name: "Stealth Helicopter",
    imageFileName: "11_stealth_helicopter",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 12,
    name: "Propeller Fighter",
    imageFileName: "12_propeller_fighter",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 13,
    name: "Jet Fighter",
    imageFileName: "13_jet_fighter",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 14,
    name: "Stealth Fighter",
    imageFileName: "14_stealth_fighter",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 15,
    name: "Propeller Fighter-Bomber",
    imageFileName: "15_propeller_fighter_bomber",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 16,
    name: "Jet Fighter-Bomber",
    imageFileName: "16_jet_fighter_bomber",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 17,
    name: "Stealth Fighter-Bomber",
    imageFileName: "17_stealth_fighter_bomber",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 18,
    name: "Propeller Bomber",
    imageFileName: "18_propeller_bomber",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 19,
    name: "Jet Bomber",
    imageFileName: "19_jet_bomber",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 20,
    name: "Stealth Bomber",
    imageFileName: "20_stealth_bomber",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 21,
    name: "Anti-Aircraft",
    imageFileName: "21_anti_aircraft",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 22,
    name: "Rocket Anti-Aircraft",
    imageFileName: "22_rocket_anti_aircraft",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 23,
    name: "Heavy Anti-Aircraft",
    imageFileName: "23_heavy_anti_aircraft",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 24,
    name: "Tactical Ballistic Missile",
    imageFileName: "24_tactical_ballistic_missile",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 25,
    name: "Intermediate Range Ballistic Missile",
    imageFileName: "25_intermediate_range_ballistic_missile",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 26,
    name: "Intercontinental Ballistic Missile",
    imageFileName: "26_intercontinental_ballistic_missile",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 27,
    name: "Submarine",
    imageFileName: "27_submarine",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 28,
    name: "Cruiser",
    imageFileName: "28_cruiser",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
  PlayCard(
    id: 29,
    name: "Battleship",
    imageFileName: "29_battleship",
    description: "",
    cardType: PlayCardType.ground,
    cardSubType: PlayCardSubType.infantry,
    cardRarity: PlayCardRarity.common,
    // Hitpoints, Armor, Firepower, Precision, Evasion
    stats: [2, 0, 3, 2, 3],
    // Manpower, Equipment, Metal, Electronics
    costs: [1, 5, 0, 0],
    // HighAir, LowAir, Ground, Water, Underwater
    effectiveness: [
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.normalEffect,
      PlayCardEffectiveness.noEffect,
      PlayCardEffectiveness.noEffect,
    ],
  ),
];
