class Match {
  final String team1;
  final String team2;
  final int score1;
  final int score2;
  final String time;
  final String totalTime;

  Match({
    required this.team1,
    required this.team2,
    required this.score1,
    required this.score2,
    required this.time,
    required this.totalTime,
  });

  factory Match.fromFirestore(Map<String, dynamic> firestoreData) {
    return Match(
      team1: firestoreData['team1'] as String,
      team2: firestoreData['team2'] as String,
      score1: firestoreData['score1'] as int,
      score2: firestoreData['score2'] as int,
      time: firestoreData['time'] as String,
      totalTime: firestoreData['totalTime'] as String,
    );
  }
}