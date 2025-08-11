class Stadium {
  final String name;
  final int capacity;
  String location;
  List<String> teams;
  Stadium(this.name, this.capacity, this.location, this.teams);
  String display() {
    return 'Stadium: $name, Capacity: $capacity, Location: $location, Teams: ${teams.join(', ')}';
  }
}