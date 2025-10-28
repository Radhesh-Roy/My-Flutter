

import 'package:flutter/material.dart';

class HomePage01 extends StatefulWidget {
  const HomePage01({super.key});

  @override
  State<HomePage01> createState() => _HomePage01State();
}

class _HomePage01State extends State<HomePage01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FAFC),
      appBar: AppBar(
        backgroundColor: Color(0xffF9FAFC),
        leading: Icon(Icons.grid_view_outlined),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on_outlined),
            Text(
              "Shiloh, Hawaii",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        actions: [
          Icon(Icons.notifications_none_rounded),
          SizedBox(width: 20,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Card(
              elevation: 10,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    prefix: Icon(Icons.search),
                    hint: Text("Search..."),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none
                    )
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
