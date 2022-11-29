import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/formatters.dart';

class GreetingsComponent extends StatelessWidget {
  const GreetingsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();

    return Padding(
      padding: const EdgeInsets.all(padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hi, Jared!',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                Format.date(now),
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color.fromRGBO(255, 255, 255, 0.6),
                ),
              ),
            ],
          ),
          const NotificationComponent(),
        ],
      ),
    );
  }
}

class NotificationComponent extends StatelessWidget {
  const NotificationComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          padding: const EdgeInsets.all(0),
          backgroundColor: transparentWhite,
          elevation: 0,
        ),
        child: const Icon(
          Icons.notifications,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
