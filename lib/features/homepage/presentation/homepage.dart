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
                Column(
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
                ),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 18, 79, 129).withOpacity(0.1)
                  ),
                  child: Icon(Icons.notifications, size: 36,color: Color.fromARGB(255, 18, 79, 129),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
