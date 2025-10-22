import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: Icon(Icons.arrow_back, color: Colors.blueAccent,),
      ),

     body: Padding(
       padding: const EdgeInsets.all(20),
       child: Center(
         child: Column(
           spacing: 10,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Image.asset("cignifi.jpeg", height: 100, width: 100, ),
             Align(
                 alignment: AlignmentGeometry.centerLeft,
                 child: Text("Create your account", style: TextStyle(fontSize: 20, color: Colors.blueAccent, fontWeight: FontWeight.w200), textAlign: TextAlign.start,)),

             TextField(
               decoration: InputDecoration(
                 border:InputBorder.none,

               ),
             ),

           ],
         ),
       ),
     ),
    );
  }
}
