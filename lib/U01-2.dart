
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
   const Registration({super.key});

   @override
   State<Registration> createState() => _RegistrationState();
 }

 class _RegistrationState extends State<Registration> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
         backgroundColor: Colors.white,
       ),
       body: Padding(
         padding: const EdgeInsets.all(12),
         child: Center(

             child: Column(
               spacing: 10,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Row(
                   spacing: 130,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Icon(Icons.arrow_back_ios, color: Colors.blueAccent,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Let's Gets Start!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500 ),),
                          Text("Create your new account", style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),)
                        ],
                      ),
                   ],
                 ),
                 TextField(
                   decoration: InputDecoration(
                 ),
               ],
             )),
       ),
     );
   }
 }
