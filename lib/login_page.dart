import 'package:flutter/material.dart';

class login extends StatelessWidget {
  login({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          // Positioned(
          Container(
            height: 300,
            width: width,

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("aset/st.png"),
                fit: BoxFit.fill,
                // ),
              ),
            ),
          ),

          Text(
            "Hello",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
          ),

          SizedBox(height: 30),


        



        ],
      ),
    );
  }
}
