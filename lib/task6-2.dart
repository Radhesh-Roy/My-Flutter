
import 'package:flutter/material.dart';
class ClothStore extends StatefulWidget {
  const ClothStore({super.key});

  @override
  State<ClothStore> createState() => _ClothStoreState();
}

class _ClothStoreState extends State<ClothStore> {
  List<dynamic> ProductList=[
    {
      "image": "assets/Sweater01.jpg",
      "title": "Women's Knitted Sweater",
      "price": 89.09,
    },
    {
      "image": "assets/Jacket01.webp",
      "title": "Stylish Winter Jacket",
      "price": 120.50,
    },
    {
      "image": "assets/Top01.jpg",
      "title": "Elegant Floral Top",
      "price": 65.75,
    },
    {
      "image": "assets/Hoodie01.png",
      "title": "Casual Hoodie for Women",
      "price": 95.99,
    },
    {
      "image": "assets/Cardigan01.jpeg",
      "title": "Soft Wool Cardigan",
      "price": 110.00,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(

        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.more_horiz),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios, size: 30,),
                  Title(color: Colors.black, child: Text("Women's Apparel", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                  Icon(Icons.more_vert_outlined, size: 30,),

                ],
              ),
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            margin: EdgeInsets.all(10),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text("1,452 Results"),
                  Spacer(),
                  Text("Filter & Sort"),
                  SizedBox(width: 10,),
                  Icon(Icons.filter_alt_outlined)
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: ProductList.length,

                itemBuilder: (context, index){
              return Container(
                height: 150,
                width: double.infinity,
                margin: EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Card(
                      elevation: 10,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Image.asset("assets/Sweater01.jpg", height: 50, width: 50,)),
                          Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Container(
                                      height: 30,
                                      width: 50,
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      alignment: Alignment.center,
                                      child: Center(
                                          child: Text(
                                              "Limited Edition",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white))),
                                    ),
                                    Title(color: Colors.black, child: Text("${ProductList[index]['title']}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                                    Text("${ProductList[index]['price']}"),
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(Icons.star, color: Colors.orange, size: 15),
                                          Icon(Icons.star, color: Colors.orange, size: 15),
                                          Icon(Icons.star, color: Colors.orange, size: 15),
                                          Icon(Icons.star, color: Colors.orange, size: 15),
                                          Icon(Icons.star, color: Colors.orange, size: 15),
                                          Text("(340 Reviews)", style: TextStyle(color: Colors.grey),)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),

                        ],
                      ),
                    ),
                    Positioned(
                      top: 15,
                      right: 15,
                      child: Icon(Icons.favorite, color: Colors.black,),),
                    Positioned(
                        right: 15,
                        bottom: 15,
                        child:Row(
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              color: Colors.black,
                            ),
                            SizedBox(width: 5),
                            Container(
                              height: 10,
                              width: 10,
                              color: Colors.blue,
                            ),
                            SizedBox(width: 5),
                            Container(
                              height: 10,
                              width: 10,
                              color: Colors.red,
                            ),
                          ],
                        )),
                  ],
                ),
              );
            }),
          ),


        ],

      ),


    );
  }
}
