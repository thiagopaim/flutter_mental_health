import 'package:flutter/material.dart';
import 'package:mental_health/components/exercises_component.dart';
import 'package:mental_health/components/feelings_component.dart';
import 'package:mental_health/components/greetings_component.dart';
import 'package:mental_health/components/search_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            GreetingsComponent(),
            SearchComponent(),
            FeelingsComponent(),
            ExercisesComponent(),
          ],
        ),
      ),
    );
  }
}
