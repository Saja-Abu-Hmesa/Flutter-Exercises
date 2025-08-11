class Strategy {
  static Map<String, Map<String, int>> payoffMatrix = {
    "Offensive": {"Offensive": 7, "Defensive": 5, "Balanced": 6},
    "Defensive": {"Offensive": 10, "Defensive": 7, "Balanced": 6},
    "Balanced": {"Offensive": 7, "Defensive": 7, "Balanced": 8},
  };

  static int getBonus(String myStrategy, String opponentStrategy) {
    return payoffMatrix[myStrategy]?[opponentStrategy] ?? 0;
  }
}
