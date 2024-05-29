import 'package:flutter/material.dart';

class ScheduleGroup extends StatelessWidget {
  const ScheduleGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        const Text(
          "Upcoming Schedule",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red.shade200,
          ),
          child: const Text(
            "2",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}