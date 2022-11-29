import 'package:flutter/material.dart';
import 'package:mental_health/utils/constants.dart';

class FeelingsComponent extends StatelessWidget {
  const FeelingsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'How do you feel?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              FeelingsListComponent(emoji: '😔', label: 'Badly'),
              FeelingsListComponent(emoji: '😌', label: 'Fine'),
              FeelingsListComponent(emoji: '😁', label: 'Well'),
              FeelingsListComponent(emoji: '😄', label: 'Excellent'),
            ],
          ),
        ],
      ),
    );
  }
}

class FeelingsListComponent extends StatelessWidget {
  const FeelingsListComponent({
    Key? key,
    required this.emoji,
    required this.label,
  }) : super(key: key);

  final String emoji;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 70,
          height: 70,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
              padding: const EdgeInsets.all(0),
              backgroundColor: const Color.fromRGBO(255, 255, 255, 0.15),
              elevation: 0,
            ),
            child: Text(emoji, style: const TextStyle(fontSize: 28)),
          ),
        ),
        const SizedBox(height: 10),
        Text(label, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}
