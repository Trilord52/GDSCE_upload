import 'package:flutter/material.dart';
import 'package:flutter_class_practice_1/main2.dart';
import 'package:flutter_class_practice_1/main3.dart';

void main() {
  runApp(ThirdApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Color(0xff43498A),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,  
       /* body: Expanded(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff2E3FD6),(Color(0xff43498A))],
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd )
              ),*/
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,   
                  children: [
                    Image.asset("assets/one.jpg"),
                    SizedBox(height: 70),
                    Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                padding: const EdgeInsets.all(16.0),
                
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Profile',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight:FontWeight.bold
                    ),
                    ),
                    SizedBox(height: 10),
                          Text("Name: Tinbite",
                              style: TextStyle(fontSize: 18, color: Colors.black)),
                          Text("Group Number: 19",
                              style: TextStyle(fontSize: 18, color: Colors.black)),
                          Text("Doro",
                              style: TextStyle(fontSize: 18, color: Colors.black)),
                        ],
                ),
                  )
                  ],
                  
                )
              ),
            ],
          ),
        )

      )
    );
  }
}

