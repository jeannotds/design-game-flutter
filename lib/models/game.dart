class Game {
  // Declare y, initially null.
  String bgImage;
  String icon;
  String name;
  String type;
  num score;
  num review;
  String description;
  List<String> images;

  Game(
    this.bgImage,
    this.icon,
    this.name,
    this.type,
    this.score,
    this.review,
    this.description,
    this.images,
  );

  //Method
  static List<Game> games() {
    return [
      Game(
        'assets/images/ori1.jpg',
        'assets/images/rl5.jpg',
        'Ori and the forest',
        'Adventure',
        4.8,
        // 382,
        324,
        "Ori is stranger to peril, bu when a fateful flight puts the owlet ku in har'ms way.",
        [
          'assets/images/ori2.jpg',
          'assets/images/ori3.jpg',
          'assets/images/ori4.jpg',
        ],
      ),
      Game(
        'assets/images/ori4.jpg',
        'assets/images/legend4.jpg',
        'forest legend and the',
        'comedy',
        4.8,
        // 382,
        324,
        "Ori is stranger to peril, bu when a fateful flight puts the owlet ku in har'ms way.",
        [
          'assets/images/ori4.jpg',
          'assets/images/ori5.jpg',
          'assets/images/ori4.jpg',
        ],
      ),
      Game(
        'assets/images/ori5.jpg',
        'assets/images/rl3.jpg',
        'Mortal combat',
        'Action',
        4.8,
        // 382,
        324,
        "Ori is stranger to peril, bu when a fateful flight puts the owlet ku in har'ms way.",
        [
          'assets/images/ori4.jpg',
          'assets/images/ori5.jpg',
          'assets/images/ori4.jpg',
        ],
      )
    ];
  }
}
