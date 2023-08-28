import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      
      body: SafeArea(
         
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                    Container(
                      color: Colors.red,
                      width: 100,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.yellow,
                          height: 100,
                          width: 100,
                        ),
                        Container(
                          color: Colors.green,
                          height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.lightBlueAccent,
                      width: 100,
                    ),  
                  ],
                ),
      ),
    );
  }
}
                
                
               