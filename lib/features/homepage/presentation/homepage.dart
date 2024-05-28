import 'package:drreach/features/homepage/presentation/widgets/location_and_notifications/location.dart';
import 'package:drreach/features/homepage/presentation/widgets/location_and_notifications/notifications_logo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              LocationLogo(), 
               NotificationLogo()
              ],
            )
          ],
        ),
      ),
    );
  }
}
