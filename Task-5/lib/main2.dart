import 'package:flutter/material.dart';

// void main() {
//   runApp(SecondApp());
// }

class SecondApp extends StatelessWidget {
  const SecondApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     /* home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,  */
            home: Scaffold(
             body: Expanded(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff2E3FD6),(Color(0xff43498A))],
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd )
              ),
            child: Center(
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
             Image.asset("assets/two.jpg"),
              SizedBox(height: 20,),
               Container(
                height: 300,
                width: 300,
                alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Enjoy Your Food',
              textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight:FontWeight.bold
              ),
          ),
         SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        print("It works");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,  
                        padding: const EdgeInsets.symmetric(
                            horizontal: 90, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
          ),
                      ),
                      child:  Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 18, color: Colors.deepPurple,
                          fontWeight:FontWeight.bold),
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
            ),
    );
  }
}
