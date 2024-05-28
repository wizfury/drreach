import 'package:flutter/material.dart';

class NotificationLogo extends StatefulWidget {
  const NotificationLogo({super.key});

  @override
  State<NotificationLogo> createState() => _NotificationLogoState();
}

class _NotificationLogoState extends State<NotificationLogo> {
  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 18, 79, 129).withOpacity(0.1)
                  ),
                  child: Stack(
                    children: [
                      Icon(Icons.notifications, size: 36,color: Color.fromARGB(255, 18, 79, 129),),
                      Positioned(
                        right: 8,
                        top: 5,
                        child: Container(
                        height: 9, 
                        width: 9, 
                       decoration: BoxDecoration( 
                        shape: BoxShape.circle, 
                        color: Colors.red.shade400
                       ),
                      ))
                    ],
                  ),
                );
  }
}