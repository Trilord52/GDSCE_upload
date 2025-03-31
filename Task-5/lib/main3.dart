import 'package:flutter/material.dart';

class ThirdApp extends StatelessWidget {
  const ThirdApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff2E3FD6), Color(0xff43498A)],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 120,),
                Image.asset(
                  "assets/three.jpg",
                  height: 200,
                ),
                SizedBox(height: 180),
                Expanded(
                  child: 
                Container(
                  
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "4.8",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Text(
                            "\$20",
                            style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Beef Burger",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Big juicy burger with Cheese, Lettuce, Onions, Tomato, and special sauce!",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Add Ons:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/four.jpg", height: 60),
                          Image.asset("assets/six.jpg", height: 60),
                          Image.asset("assets/five.jpg", height: 60),
                        ],
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            print("Added to cart!");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff2E3FD6),
                            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Text(
                            "Add to Cart",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class ThirdApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
               body: Container(
          
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff2E3FD6),(Color(0xff43498A))],
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd 
              ),
               ),
               child: Center(
             child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 80),
            
                
                   Image.asset(
                    "assets/three.jpg", 
                  ),
                

                Expanded(child: SizedBox()),
                Container(
                  alignment: Alignment.bottomCenter,
                   
                  padding:  EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                   
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14, vertical: 6),
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "4.8",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                          Text(
                            "\$20",
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                       SizedBox(height: 10),                      
                      Text(
                        "Beef Burger",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                       SizedBox(height: 5),
                       Text(
                        "Big juicy burger with Cheese, Lettuce, Onions, Tomato, and special sauce!",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                      SizedBox(height: 15),

              
                      Text(
                        "Add Ons:",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                      SizedBox(height: 10),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset  ("assets/four.jpg"),
                           Image.asset("assets/six.jpg"),
                           Image.asset("assets/five.jpg"),
                        ],
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            print("Added to cart!");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            padding:  EdgeInsets.symmetric(
                                horizontal: 100, vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child:  Text(
                            "Add to Cart",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],

              ),
            
          ), 
        
      ),   
      ),
    );
  }
}*/
