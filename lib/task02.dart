
import 'package:flutter/material.dart';
class task02 extends StatelessWidget {
  const task02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Assignment : 02"),
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
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF2196F3),
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color(0xFF93CCF9),
                      borderRadius: BorderRadius.circular(10)

                  ),
                  child: Center(
                      child: Text(
                        "I am Text",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      )),
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
                      width: 120,
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
                    border: Border.all(color: Color(0xFF52AD56,),width: 3),
                    borderRadius: BorderRadius.only(
                      topRight:Radius.circular(50),
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
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFD78E8A),width: 3),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                      child: Text(
                        "Metarial Widget",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
