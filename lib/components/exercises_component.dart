import 'package:flutter/material.dart';
import '../utils/constants.dart';

class ExercisesComponent extends StatelessWidget {
  const ExercisesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(radius * 2.5),
          topRight: Radius.circular(radius * 2.5),
        ),
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(right: padding, left: padding),
              child: Column(
                children: [
                  SizedBox(height: padding / 1.5),
                  SizedBox(
                    width: 50,
                    height: 6,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),
                  SizedBox(height: padding / 1.5),
                  ExerciseComponent(
                    title: 'Speaking skills',
                    icon: Icons.mic,
                    exercises: 16,
                    color: Colors.amber,
                  ),
                  ExerciseComponent(
                    title: 'Reading speed',
                    icon: Icons.read_more,
                    exercises: 8,
                    color: Colors.cyan,
                  ),
                  ExerciseComponent(
                    title: 'Coach coaching',
                    icon: Icons.account_balance_wallet,
                    exercises: 2,
                    color: Colors.green,
                  ),
                  ExerciseComponent(
                    title: 'Faber Castel',
                    icon: Icons.edit,
                    exercises: 43,
                    color: Colors.blue,
                  ),
                  ExerciseComponent(
                    title: 'Cê é o bichão mesmo, hein?',
                    icon: Icons.mic,
                    exercises: 43,
                    color: Colors.blueGrey,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ExerciseComponent extends StatelessWidget {
  const ExerciseComponent({
    Key? key,
    this.color = Colors.blueAccent,
    required this.icon,
    required this.title,
    required this.exercises,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final String title;
  final int exercises;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          // padding: const EdgeInsets.all(padding),
          // color: Colors.white,
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.blue[50],
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: Color.fromRGBO(0, 175, 255, 0.1),
              ),
              borderRadius: BorderRadius.circular(28),
            ),
            padding: const EdgeInsets.all(15),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          child: Row(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(radius),
              child: Container(
                width: 50,
                height: 50,
                color: color,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '${exercises.toString()} exercises',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ]),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
