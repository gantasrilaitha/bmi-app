import 'dart:html';
import 'package:firstapp/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key?key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SecondPage(),
    );
  }
}
class SecondPage extends StatefulWidget {
  const SecondPage({Key?key}):super(key:key);
  @override
  State<SecondPage> createState()=> _SecondPage();
}
class _SecondPage extends State<SecondPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text("Result"),
      ),
      body:Column(
        children:[
          TextButton(onPressed: (){
            Navigator.pop(context,MaterialPageRoute(builder: (context)=>MyHomePage()));
          },
            child:Column(
              children: [
              Text("Calculate" ,
                  style: TextStyle(
                      fontSize: 21, fontWeight: FontWeight.bold, color: Colors.red)
              ),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                )

              ]
            )
          )

        ]
      )
    );
  }
}