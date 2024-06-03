import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ScheduleDoctorWidget extends StatelessWidget {
  const ScheduleDoctorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: const Color.fromARGB(255, 83, 164, 194),
      child: Padding(
          padding:
              const EdgeInsets.only(left: 12, right: 12, top: 10, bottom: 10),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    child: Text("dr"),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr. Rohan Karn",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                       Text(
                         "Opthamologoist general sergon",
                         style: TextStyle(
                           color: Colors.white.withOpacity(0.9),
                           fontSize: 12.0,
                         ),
                         overflow: TextOverflow.ellipsis, // Truncate if needed
                       ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.2)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 18, 79, 129),
                          ),
                        ),
                        Icon(
                          Icons.phone,
                          size: 30,
                          color: Colors.white,
                          weight: 100,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                color: Color.fromARGB(255, 245, 245, 245),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 8, bottom: 8),
                  child: FittedBox(
                    child: Row(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          size: 16,
                        ),
                        Text(
                          "  Wednesday, 12 Sep",
                        ),
                        Text(" | "),
                        Icon(
                          Icons.access_time_outlined,
                          size: 16,
                        ),
                        Text(
                          " 10:00 AM -  10:00 AM",
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
