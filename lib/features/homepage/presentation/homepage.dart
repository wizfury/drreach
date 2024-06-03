import 'package:drreach/features/homepage/presentation/widgets/location_and_notifications/location.dart';
import 'package:drreach/features/homepage/presentation/widgets/location_and_notifications/notifications_logo.dart';
import 'package:drreach/features/homepage/presentation/widgets/searchbar/searchbar.dart';
import 'package:drreach/features/homepage/presentation/widgets/upcoming_schedule/schedule.dart';
import 'package:drreach/features/homepage/presentation/widgets/upcoming_schedule/schudule_doctor_card.dart';
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
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        
        ),
        child: Column(
         
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [LocationLogo(), NotificationLogo()],
            ),
            const SizedBox(
              height: 15,
            ),
            SearchWidget(),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              ScheduleGroup(), 
                Text(
                  "See All  ",
                  style: TextStyle(
                    color: Color.fromARGB(255, 18, 79, 129),
                  ),
                )
              ],
            ), 
            SizedBox(height: 8,),
            ScheduleDoctorWidget(), 
           
          ],
        ),
      ),
    );
  }
}
