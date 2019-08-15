
import 'package:flutter/material.dart';

class BattleUnit {

  int id;
  String name;
  String fileName;
  String description;

  static const statNames = ["Hitpoints", "Armor", "Firepower", "Precision", "Evasion"];
  static const totalStats = 5;

  static const resourceNames = ["Manpower", "Equipment", "Metal", "Electronics"];
  static const totalResources = 4;

  static var iconColors = [Colors.pink[200], Colors.brown, Colors.blueGrey[700], Colors.red[400]];
  static const resourceIcons = [Icons.person, Icons.build, Icons.dehaze, Icons.settings_input_component];

  // min : 0
  // max : 10
  static const minNStat = 0;
  static const maxNStat = 10;

  var stats = List<int>(totalStats);
  var resources = List<int>(totalResources);

  BattleUnit({this.id, this.name, this.fileName, this.description, this.stats, this.resources});
}

final battleUnits = [
  BattleUnit(
    id: 0,
    name: "Infantry",
    fileName: "0_infantry",
    description: "The infantry is the bulk of any army. These brave men are badly equiped, usually with just a rifle and a couple of boxes of ammunition. They are essential to any early empire.",
    stats: [1, 0, 1, 1, 2],
    resources: [1, 1, 0, 0],
  ),
  BattleUnit(
    id: 1,
    name: "Heavy Infantry",
    fileName: "1_heavy_infantry",
    description: "The heavy infantry is a version of an infantry that is better equipped and better trained. They can withstand the battlefield for much longer. But it all comes with a cost.",
    stats: [2, 0, 3, 2, 3],
    resources: [1, 5, 0, 0],
  ),
  BattleUnit(
    id: 2,
    name: "Modern Infantry",
    fileName: "2_modern_infantry",
    description: "The best trained and well equipped infantry. With the use of electronics, these men can take down advanced units like tanks, helicopters and even airplanes.",
    stats: [4, 0, 4, 3, 4],
    resources: [1, 10, 0, 1],
  ),
  BattleUnit(
    id: 3,
    name: "Field Artillery",
    fileName: "3_field_artillery",
    description: "The field artillery is the most basic artillery type. It has high damage but lacks any kind of defense. Also its shots might not be very consistent.",
    stats: [2, 0, 5, 2, 1],
    resources: [2, 1, 2, 0],
  ),
  BattleUnit(
    id: 4,
    name: "Mobile Artillery",
    fileName: "4_mobile_artillery",
    description: "The mobile artillery is a walking cannon. Mounted on top of armored tracks, this big guy can be hard to hit. Also can retrieve quite a good punch.",
    stats: [3, 4, 6, 4, 4],
    resources: [4, 2, 4, 0],
  ),
  BattleUnit(
    id: 5,
    name: "Rocket Artillery",
    fileName: "5_rocket_artillery",
    description: "The rocket artillery has high damage and high precision due to its rockets, with low armor and evasion making it a true glass cannon.",
    stats: [3, 2, 7, 6, 3],
    resources: [2, 6, 3, 2],
  ),
  BattleUnit(
    id: 6,
    name: "Tank",
    fileName: "6_tank",
    description: "",
    stats: [1, 0, 1, 1, 1],
    resources: [1, 1, 0, 0],
  ),
  BattleUnit(
    id: 7,
    name: "Heavy Tank",
    fileName: "7_heavy_tank",
    description: "",
    stats: [1, 0, 1, 1, 1],
    resources: [1, 1, 0, 0],
  ),
  BattleUnit(
    id: 8,
    name: "Modern Tank",
    fileName: "8_modern_tank",
    description: "",
    stats: [1, 0, 1, 1, 1],
    resources: [1, 1, 0, 0],
  ),
  BattleUnit(
    id: 9,
    name: "Helicopter",
    fileName: "9_helicopter",
    description: "",
    stats: [1, 0, 1, 1, 1],
    resources: [1, 1, 0, 0],
  ),
  BattleUnit(
    id: 10,
    name: "Attack Helicopter",
    fileName: "10_attack_helicopter",
    description: "",
    stats: [1, 0, 1, 1, 1],
    resources: [1, 1, 0, 0],
  ),
  BattleUnit(
    id: 11,
    name: "Stealth Helicopter",
    fileName: "11_stealth_helicopter",
    description: "",
    stats: [1, 0, 1, 1, 1],
    resources: [1, 1, 0, 0],
  ),
  BattleUnit(
    id: 12,
    name: "Propeller Fighter",
    fileName: "12_propeller_fighter",
    description: "",
    stats: [1, 0, 1, 1, 1],
    resources: [1, 1, 0, 0],
  ),
  BattleUnit(
    id: 13,
    name: "Jet Fighter",
    fileName: "13_jet_fighter",
    description: "",
    stats: [1, 0, 1, 1, 1],
    resources: [1, 1, 0, 0],
  ),
  BattleUnit(
    id: 14,
    name: "Stealth Fighter",
    fileName: "14_stealth_fighter",
    description: "",
    stats: [1, 0, 1, 1, 1],
    resources: [1, 1, 0, 0],
  ),
  BattleUnit(
    id: 15,
    name: "Propeller Fighter-Bomber",
    fileName: "15_propeller_fighter_bomber",
    description: "",
    stats: [1, 0, 1, 1, 1],
    resources: [1, 1, 0, 0],
  ),
  BattleUnit(
    id: 16,
    name: "Jet Fighter-Bomber",
    fileName: "16_jet_fighter_bomber",
    description: "",
    stats: [1, 0, 1, 1, 1],
    resources: [1, 1, 0, 0],
  ),
  BattleUnit(
    id: 17,
    name: "Stealth Fighter-Bomber",
    fileName: "17_stealth_fighter_bomber",
    description: "",
    stats: [1, 0, 1, 1, 1],
    resources: [1, 1, 0, 0],
  ),
  BattleUnit(
    id: 18,
    name: "Propeller Bomber",
    fileName: "18_propeller_bomber",
    description: "",
    stats: [1, 0, 1, 1, 1],
    resources: [1, 1, 0, 0],
  ),
  BattleUnit(
    id: 19,
    name: "Jet Bomber",
    fileName: "19_jet_bomber",
    description: "",
    stats: [1, 0, 1, 1, 1],
    resources: [1, 1, 0, 0],
  ),
  BattleUnit(
    id: 20,
    name: "Stealth Bomber",
    fileName: "20_stealth_bomber",
    description: "",
    stats: [1, 0, 1, 1, 1],
    resources: [1, 1, 0, 0],
  ),
  BattleUnit(
    id: 21,
    name: "Anti-Aircraft",
    fileName: "21_anti_aircraft",
    description: "",
    stats: [1, 0, 1, 1, 1],
    resources: [1, 1, 0, 0],
  ),
  BattleUnit(
    id: 22,
    name: "Rocket Anti-Aircraft",
    fileName: "22_rocket_anti_aircraft",
    description: "",
    stats: [1, 0, 1, 1, 1],
    resources: [1, 1, 0, 0],
  ),
  BattleUnit(
    id: 23,
    name: "Heavy Anti-Aircraft",
    fileName: "23_heavy_anti_aircraft",
    description: "",
    stats: [1, 0, 1, 1, 1],
    resources: [1, 1, 0, 0],
  ),
  BattleUnit(
    id: 24,
    name: "Tactical Ballistic Missile",
    fileName: "24_tactical_ballistic_missile",
    description: "",
    stats: [2, 1, 8, 7, 2],
    resources: [1, 1, 0, 0],
  ),
  BattleUnit(
    id: 25,
    name: "Intermediate Range Ballistic Missile",
    fileName: "25_intermediate_range_ballistic_missile",
    description: "",
    stats: [1, 0, 9, 8, 1],
    resources: [1, 1, 0, 0],
  ),
  BattleUnit(
    id: 26,
    name: "Intercontinental Ballistic Missile",
    fileName: "26_intercontinental_ballistic_missile",
    description: "",
    stats: [1, 0, 10, 9, 1],
    resources: [1, 1, 0, 0],
  ),
];
