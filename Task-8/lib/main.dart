import 'package:flutter/material.dart';
import 'package:flutter_class_practice_2/main2.dart';
import 'package:flutter_class_practice_2/main3.dart';

void main() {
  runApp(Thirdapp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,//this is a key point
          children: 
           [
            SizedBox(height: 80),
              Center(
                
               
                child: Text("Welcome", 
                style: TextStyle(
                  color: Colors.blue,fontSize: 20, fontWeight: FontWeight.bold
                ),
                ),
                
              ),
              SizedBox(height: 40,),
                 Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Sign In",
                     textAlign: TextAlign.start,
                     style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,
                     ),
                     ),
                   ],
                 ),
             SizedBox(height: 5,),
             Text("Korem ipsum dolor sit amet, consectetur adipiscing elit",
             style: TextStyle(
              color: Colors.grey,fontSize: 14,
             ),
             ),
             SizedBox(height: 20,),
             Text("Email",
              style: TextStyle(fontSize: 21 ,fontWeight: FontWeight.bold),
              ),
               SizedBox(height: 5,),
               TextField(
                
                decoration: InputDecoration(
                 
                  hintText: "Enter your Email",
                  filled: true,//*
                 fillColor: Colors.grey,
                  border: OutlineInputBorder(
                    
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
               ),
               SizedBox(height: 10,),
               Text("Password",
               style: TextStyle(
                fontSize: 21, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter ur password",
                    filled: true,
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: (){}, 
                  child: Text("Forgot Pass",
                  style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold
                  ),
                  )
                  ),
                ),
                SizedBox(height: 25,),
                ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, padding: EdgeInsets.symmetric(horizontal: 150,vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                
                 child: Text("Sign in",
                 style: TextStyle(
                  color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold
                 ),

                )
                ),
                SizedBox(height: 20,),
                
                Center(
                  child: Text("OR",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Image.asset('assets/facebook.png',
                      height: 50, width: 50,)
                      
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      child: 
                      Image.asset("assets/google.png",height: 20, width: 20,)
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont have an account?"),
                    SizedBox(width: 5,),
                    TextButton(onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context)=> SecondApp()),
                      );
                    }, 
                    child: Text("Sign Up",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                    ),
                    )
                    )
                  ],
                )
                
                

              
             
            ],
          ),
        ),
      
      );
  }
}
