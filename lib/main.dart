import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_second_flutter_project/pages/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}




class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isLoading=false;





  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 4,
              child: Container(
            child: Image.asset('assets/images/gawean.jpg'),
          )),


             Container(
               padding:EdgeInsets.only(bottom: 100),
                 child: MaterialButton(
                   onPressed: (){
                      setState(() {
                       isLoading=true;

                      });
                      Future.delayed(const Duration(seconds: 3), (){
                        setState(() {
                           isLoading=false;
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Page1()));

                        });
                      });
                    },
                   child: isLoading? Row(

                     mainAxisAlignment: MainAxisAlignment.center,
                     children: const [
                       CircularProgressIndicator()
                     ],

                     ):Container(
                     child: Text("Strart"),
                   )
            )
          )


        ],
      ),

    );
  }



}
