import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_second_flutter_project/pages/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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


          Expanded(

            flex: 1,
              child: Container(
                padding: EdgeInsets.only(bottom: 50),
                  child: Column(
            children: [
              Expanded(child: Text("The best portal job of this century")),
              ElevatedButton(


                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
                },
                child: Text("Continiu"),
              ),
            ],
          ),)

              )



        ],
      ),

    );
  }
}
