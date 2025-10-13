
import 'package:flutter/material.dart';
class myTimer extends StatefulWidget {
  const myTimer({super.key});

  @override
  State<myTimer> createState() => _myTimerState();
}

class _myTimerState extends State<myTimer> {
  String hour="00";
  String min="00";
  String sec="00";
  String miliSec="00";
  bool isTimer=true;

  funTimer()async{
    await Future.delayed(Duration(milliseconds: 1));

    setState(() {
      hour=DateTime.now().toString().substring(11, 13);
      min=DateTime.now().toString().substring(14, 16);
      sec=DateTime.now().toString().substring(17, 19);
      miliSec=DateTime.now().toString().substring(21, 23);
    });
    if(isTimer==true){
      funTimer();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 10,
        title: Center(
        child: Text("CODERANGAN", style: TextStyle(color: Color(0xFF3F51B5), fontWeight: FontWeight.bold),
        ),
      ),
      ),
      body: Center(
        child: Card(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          child: Container(
            width: 350,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("YOUR HIGH-PRECISION TIMER", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Center(child: Text("${hour}", style: TextStyle(color: Color(0xFF3D5AFE), fontSize: 40, fontWeight: FontWeight.bold),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 5,
                            width: 5,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 5,
                            width: 5,
                            color: Colors.grey,
                          )
                        ],

                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: Center(child: Text("${min}", style: TextStyle(color: Color(0xFF00BFA6), fontSize: 40, fontWeight: FontWeight.bold),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 5,
                            width: 5,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 5,
                            width: 5,
                            color: Colors.grey,
                          )
                        ],

                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: Center(child: Text("${sec}", style: TextStyle(color: Color(0xFFFF6D00), fontSize: 40, fontWeight: FontWeight.bold),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(

                        children: [
                          Container(
                            height: 5,
                            width: 5,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 5,
                            width: 5,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: Center(child: Text("$miliSec", style: TextStyle(color: Color(0xFFFF4081), fontSize: 30, fontWeight: FontWeight.bold),)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("HOUR", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize:10),),
                    SizedBox(width: 5,),
                    Text("MIN", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize:10),),
                    SizedBox(width: 5,),
                    Text("SEC", style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold, fontSize:10),),
                    SizedBox(width: 5,),
                    Text("MS", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize:10),),
                    SizedBox(width: 5,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      isTimer=true;
                      funTimer();

                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF00C853),
                        ),
                        child: Text("Start Clock", style: TextStyle(color: Colors.white),)),
                    SizedBox(width: 10),
                    ElevatedButton(onPressed: (){
                      isTimer=false;
                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFF6E6C),
                        ),
                        child: Text("Stop Clock", style: TextStyle(color: Colors.white),)),
                  ],
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}

