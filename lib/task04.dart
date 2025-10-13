
import 'package:flutter/material.dart';
class task04 extends StatelessWidget {
  const task04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2FAFF),
      appBar: AppBar(
        backgroundColor: Color(0xffF2FAFF),
        leading: Icon(Icons.arrow_back, color: Colors.black),
        centerTitle: true,
        title: Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            CircleAvatar(radius: 15, backgroundColor: Color(0xffFFE7C2)),
            Text("Care", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
          ],
        ),
        actions: [Icon(Icons.tune), SizedBox(width: 10)],
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 10,
          children: [
            // Search
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(spacing: 10, children: [Icon(Icons.search), Text("Search")]),
            ),

            // categories
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Baby & Kids", style: TextStyle(color: Colors.blue)),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("body", style: TextStyle(color: Colors.blue)),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Face and Mouth", style: TextStyle(color: Colors.blue)),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Face", style: TextStyle(color: Colors.blue)),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Face", style: TextStyle(color: Colors.blue)),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Face", style: TextStyle(color: Colors.blue)),
                  ),
                ],
              ),
            ),
            // products
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Product 1
                Stack(
                  children: [
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 8), // 👈 এখানে padding দেওয়া হয়েছে
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Image.asset(
                                "assets/img.png",
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Miurous"),
                                Text("Little Baby Shower Gel"),
                                Text("450ml"),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$750"),
                                    SizedBox(width: 60),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(Icons.shopping_cart_checkout, size: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(top: 10, right: 10, child: Icon(Icons.favorite_border)),
                  ],
                ),

                // Product 2
                Stack(
                  children: [
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Image.asset(
                                "assets/img.png",
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Miurous"),
                                Text("Little Baby Shower Gel"),
                                Text("450ml"),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$750"),
                                    SizedBox(width: 60),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(Icons.shopping_cart_checkout, size: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(top: 10, right: 10, child: Icon(Icons.favorite_border)),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Product 1
                Stack(
                  children: [
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 8), // 👈 এখানে padding দেওয়া হয়েছে
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Image.asset(
                                "assets/img.png",
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Miurous"),
                                Text("Little Baby Shower Gel"),
                                Text("450ml"),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$750"),
                                    SizedBox(width: 60),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(Icons.shopping_cart_checkout, size: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(top: 10, right: 10, child: Icon(Icons.favorite_border)),
                  ],
                ),

                // Product 2
                Stack(
                  children: [
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Image.asset(
                                "assets/img.png",
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Miurous"),
                                Text("Little Baby Shower Gel"),
                                Text("450ml"),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$750"),
                                    SizedBox(width: 60),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(Icons.shopping_cart_checkout, size: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(top: 10, right: 10, child: Icon(Icons.favorite_border)),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Product 1
                Stack(
                  children: [
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 8), // 👈 এখানে padding দেওয়া হয়েছে
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Image.asset(
                                "assets/img.png",
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Miurous"),
                                Text("Little Baby Shower Gel"),
                                Text("450ml"),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$750"),
                                    SizedBox(width: 60),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(Icons.shopping_cart_checkout, size: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(top: 10, right: 10, child: Icon(Icons.favorite_border)),
                  ],
                ),

                // Product 2
                Stack(
                  children: [
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Image.asset(
                                "assets/img.png",
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Miurous"),
                                Text("Little Baby Shower Gel"),
                                Text("450ml"),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$750"),
                                    SizedBox(width: 60),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(Icons.shopping_cart_checkout, size: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(top: 10, right: 10, child: Icon(Icons.favorite_border)),
                  ],
                ),
              ],
            ),



          ],
        ),
      ),
    );
  }
}
