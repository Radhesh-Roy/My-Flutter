
import 'package:flutter/material.dart';
class task01 extends StatelessWidget {
  const task01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Assignment : 01"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Container",
                      style: TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(10),
                  height: 150,
                  width: 150,
                  padding: EdgeInsets.only(
                    left: 5,
                    top: 10,
                    right: 16,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xFFe1e2e3)

                  ),
                  child: Container(
                    padding:EdgeInsets.all(5),
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Color(0xFF93CCF9)
                    ),
                    child: Text("Text", style: TextStyle(fontWeight: FontWeight.w600),),
                  ),
                ),

              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        border: Border.all(color: Color(0xFF2196F3)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),

                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 150,
                  width: 120,
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 5,
                    bottom: 5,
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xFFE0E0E0)
                  ),
                  child: Container(
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFBDBDBD),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      boxShadow: [BoxShadow(color: Color(0xFFBDBDBD),
                          blurRadius: 10,
                          offset: Offset(5, 5))],
                      border: Border.all(
                        color: Colors.redAccent,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.blue,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: SizedBox(
                    height: 150,
                    width: 120,
                    child: Center(
                      child: Text(
                        "Hello, Card!",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
