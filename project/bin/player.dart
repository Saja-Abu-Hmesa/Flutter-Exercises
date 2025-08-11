import 'dart:math';

class Player {
  String name;
  String nationality;
  String position;
  String team;
  int? power; 

  Player(this.name, this.nationality, this.position, this.team) {
    power = 50 + Random().nextInt(51); 
  }

  String display() {
    return 'Player: $name, Nationality: $nationality, Position: $position, Team: $team, Power: $power';
  }
}
