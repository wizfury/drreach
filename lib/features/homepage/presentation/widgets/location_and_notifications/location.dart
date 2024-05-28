import 'package:flutter/material.dart';

class LocationLogo extends StatefulWidget {
  const LocationLogo({super.key});

  @override
  State<LocationLogo> createState() => _LocationLogoState();
}

class _LocationLogoState extends State<LocationLogo> {
  @override
  Widget build(BuildContext context) {
    return    Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text("Location",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400, color: Colors.black54),),
                    ),
                    Row(children: [
                      Icon(
                        Icons.home_filled,
                        color: Color.fromARGB(255, 18, 79, 129),
                        size: 22,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Golden Gate",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      Icon(Icons.arrow_drop_down_outlined,color: Color.fromARGB(255, 18, 79, 129),), 
                      
                    ]),
                  ],
                );
  }
}