import 'package:flutter/material.dart';

class EndPage extends StatelessWidget {
  const EndPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 133, 177, 255),
      body: Container(
        color: Colors.white,
        child: Center(child: Text("Total Points",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),)),
      ),
      
    );
  }
}