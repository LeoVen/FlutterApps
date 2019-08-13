import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

import '../models/save_data.dart';

class SaveFileHandler {
  static const fileName = "mathGeniusSaveFile";

  static Future<File> get _localFile async {
    final Directory directory = await getApplicationDocumentsDirectory();
    return File("${directory.path}/$fileName.json");
  }

  static Future<SaveData> load() async {

    try {
      final file = await _localFile;

      String content = await file.readAsString();

      return SaveData.fromJson(jsonDecode(content));

    } catch (e) {
      return SaveData();
    }
  }

  static Future<void> save(SaveData data) async {

    try {
      final file = await _localFile;

      file.writeAsString(jsonEncode(data));
    } catch (e) {
      print("Error when saving data");
    }
  }
}
