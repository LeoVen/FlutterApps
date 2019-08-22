class SecretWord {
  String word;
  String hint;
  List<bool> discovered;

  SecretWord(String word, this.hint) {
    this.word = word.toUpperCase();
    discovered = List.generate(word.length, (index) => word[index] == " " ? true : false);
  }

  SecretWord.newFrom(this.word, this.hint, this.discovered);
}
