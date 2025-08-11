// trainer.dart
import 'dart:math';
import 'team.dart';

class Trainer {
  String name;
  String experience;
  Team? team;
  int? power;
  String strategy;

  Trainer(this.name, this.experience, this.team, {this.strategy = "Balanced"}) {
    power = 60 + Random().nextInt(51); 
  }

  String display() {
    return 'Trainer: $name, Experience: $experience, Team: ${team?.name ?? "No team"}, Power: $power, Strategy: $strategy';
  }
}
