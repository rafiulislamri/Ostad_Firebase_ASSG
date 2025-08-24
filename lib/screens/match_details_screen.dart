import 'package:flutter/material.dart';
import '../models/match.dart';

class MatchDetailsScreen extends StatelessWidget {
  final Match match;

  const MatchDetailsScreen({super.key, required this.match});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('${match.team1} vs ${match.team2}'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        centerTitle: true,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: FractionallySizedBox(
            widthFactor: 0.9,
            child: Card(
              color: Colors.blue,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${match.team1} vs ${match.team2}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '${match.score1} : ${match.score2}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Time: ${match.time}',
                      style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold,),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Total Time: ${match.totalTime}',
                      style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold,),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
