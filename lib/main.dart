import 'package:flutter/material.dart';
import 'package:test/Cart.dart';
import 'package:test/Drawer.dart';
import 'package:test/Home.dart';
import 'package:test/Profile.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: MyApp(),
  ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const ProfileScreen(),
    const CartScreen(),
    const DrawerScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('My App',
          style:GoogleFonts.publicSans() ,
         ),
      ),
      backgroundColor: Colors.teal,
      body: screens[currentIndex],
      bottomNavigationBar: 
      BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (tappedIndex){
          setState(() {
            currentIndex = tappedIndex;
          });
        },
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],

      ),
      drawer: Drawer(
        child: DrawerScreen(),
      ),
      endDrawer: Drawer(

      ),
        // child: Container(
        //   color: Colors.teal,
        //   width: double.infinity,
        //   child: Column(
            
            
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Container(
        //         color: Colors.red,
        //         height: MediaQuery.of(context).size.width,
        //         width: 100,
        //       )
        //     ],
        //   ),
          

          
        // ),
        
        
        // child: SingleChildScrollView(
        //   child: Wrap(
        //     children: [
        //       for(int i = 0; i<50; i++)
        //       // Expanded(
        //         Container(
        //           color: i%2==0? Colors.black: Colors.white,
        //           height: MediaQuery.of(context).size.width/ 5,
        //           width: MediaQuery.of(context).size.width/ 5,
        //         ),
              
        //     ],
        //   ),
        // ),
        // child: Container(
        //   // decoration: BoxDecoration(
        //   //   borderRadius: BorderRadius.circular(100)
        //   // ),
        //   color: Colors.lightGreen,
        //   width: double.infinity,
        //   child: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //       color: Colors.brown,
        //       child: Column(
                
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         crossAxisAlignment: CrossAxisAlignment.end,
                
        //         children: [
        //           Container(
        //             color: Colors.blueAccent,
        //             width: 100,
        //             height: 100,
        //           ),
        //           Container(
        //             color: Colors.pinkAccent,
        //             width: 100,
        //             height: 100,
        //           ),
        //           Container(
        //             color: Colors.white,
        //             width: 100,
        //             height: 100,
        //           )
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        
        
     
      
      

      
      // appBar: AppBar(
      //   leading:const Icon(Icons.menu) ,
      //   title: const Text('My App'),
      //   centerTitle: true,
      //   actions: const [
      //     Icon(Icons.search),
      //     Icon(Icons.more_vert),
      //   ],
      // ),
      // floatingActionButton:FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: (){
      //     setState((){
      //       count++;
      //     });
      //   },
      // ) ,
    
    );
  } 
}