class SaveData {
  final int score;
  final int answersRight;
  final int answersWrong;

  SaveData({this.score = 0, this.answersRight = 0, this.answersWrong = 0});

  SaveData.fromJson(Map<String, dynamic> json)
      : score = json["score"] as int,
        answersRight = json["answersRight"] as int,
        answersWrong = json["answersWrong"] as int;

  Map<String, dynamic> toJson() => {
        "score": score,
        "answersRight": answersRight,
        "answersWrong": answersWrong,
      };
}
