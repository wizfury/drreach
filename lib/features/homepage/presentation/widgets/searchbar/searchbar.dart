import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.black,width: 0.8),
        
      ),
      child: const Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(width: 30.0),
          Expanded(
            child: TextField(
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search Doctor, Hospitals',
                hintStyle: TextStyle(fontSize: 12, ),
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}