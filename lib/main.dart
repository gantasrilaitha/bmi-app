import 'dart:html';
import 'package:flutter/material.dart';
import 'package:firstapp/secondpage.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double typedouble = 0;
  double height = 0;


  void _IncrementCounter(){
    setState(() {
      typedouble++;
    });
  }
  void _DecrementCounter(){
    setState(() {
      typedouble--;
    });
  }

  void _IncrementCounte1r(){
    setState(() {
      height++;
    });
  }
  void _DecrementCounte2r(){
    setState(() {
      height--;
    });
  }


  double bmic(){
    double bmi = (typedouble) / (height)*(height);
    return bmi;
  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          title: Text("BMI Calculator", style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Hello welcome to BMI Calculator",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.red)),

              Container(

                height:150,
                width: 650,
                color: Colors.yellow,

                child: Row(

                  children: [
                    Text(
                      "Weight ${typedouble.round()}", style: TextStyle(fontSize: 23, fontWeight: FontWeight.normal ,color: Colors.red),
                    ),

                    ElevatedButton(

                      onPressed: _IncrementCounter,
                      child: Text('+'),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(23),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: _DecrementCounter,
                      child: Text('-'),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(23),
                      ),
                    ),

                    Slider(value: typedouble,min:0,max:635, onChanged: (value){
                      setState(() {
                        typedouble = value;
                      });
                    })
                  ],
                ),

              ),
              Container(

                height:150,
                width: 650,
                color: Colors.grey,

                child: Row(

                  children: [
                    Text(
                      "Height ${height.round()}", style: TextStyle(fontSize: 23, fontWeight: FontWeight.normal ,color: Colors.red),
                    ),

                    ElevatedButton(

                      onPressed: _IncrementCounte1r,
                      child: Text('+'),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(23),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: _DecrementCounte2r,
                      child: Text('-'),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(23),
                      ),
                    ),

                    Slider(value: height,min:0,max:140, activeColor: Colors.green,onChanged: (value){
                      setState(() {
                        height = value;
                      });
                    })
                  ],
                ),
              ),
              Container(
                height: 133,
                width: 309,
                color: Colors.black87,

                child: Column(
                  children: [

                    TextButton(onPressed: (){
                      double bmi=bmic();

                      Navigator.push(context,MaterialPageRoute(builder: (bmi)=>SecondPage()));
                    },
                        child: Column(
                          children: [
                            Text("Calculate", style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple
                            )

                            )



                          ],

                        )


                    ),

                    Container(
                        height: 133,
                        width: 309,
                        color: Colors.black87,

                        child: Column(
                          children: [

                            Text("BMI=${((typedouble)/((height)*(height)))}",style:TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple

                            )

                            ),
                          ],

                        )


                    ),

                  ],


                ),

              )]));
  }}