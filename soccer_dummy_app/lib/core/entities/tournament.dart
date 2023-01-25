class Tournament {
  final int id;
  final String name;
  final String profileUrl;
  final String matchDay;

  //Parametros ordinales o por posicion
  //Tournament(this.id, this.name, this.profileURL, this.matchDay);

  //Parametros nombrados con valor por defecto
  //Tournament({this.id=0, this.name="", this.profileURL="", this.matchDay=""});

  //Parametros nombrados requeridos
  Tournament({
    required this.id,
    required this.name,
    required this.profileUrl,
    required this.matchDay
  });
}
