import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);


  @override
  State<Page2> createState() => _Page2State();
}
class _Page2State extends State<Page2> {

  bool checkboxValue=false;
  bool passwordVisible=false;
  TextEditingController textEditingController=TextEditingController();
  bool _xatoText=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 170,
            child: Image.asset("assets/images/gawean.jpg"),
          ),
           Container(
             padding: EdgeInsets.only(top: 10),
             alignment: Alignment.center,
               child: Text("Sign in to your acount",style: TextStyle(fontSize: 18,letterSpacing: 1,fontWeight: FontWeight.bold))),
          Container(
            padding: EdgeInsets.only(top: 10,left: 50),

            child: Row(
            children: [
              Text("Email",style: TextStyle(fontSize: 18),), Text("*",style:TextStyle(color: Colors.red),)
            ],
          ),),
          Container(
            padding: EdgeInsets.only(left: 50,right: 50,top: 10),
            height: 35,
            child:TextField(
              decoration: InputDecoration(border: OutlineInputBorder(),),

            ) ,),
          Container(
            padding: EdgeInsets.only(left: 50,top: 50),
            child: Row(
              children: [Text("Password",style: TextStyle(fontSize: 18),), Text("*",style: TextStyle(color: Colors.red),)],
            )
          ),
          Container(
            padding: EdgeInsets.only(left: 50,right: 50,top: 10),

            child: TextField (
              controller: textEditingController,
              obscureText: passwordVisible,

                decoration:InputDecoration(
                    border: OutlineInputBorder(),
                  isDense: false,
                  hintText: "Enter password",
                  labelText: "password",
                  alignLabelWithHint: false,
                  filled: true,
                  helperText: "Password must be contain spessial character",
                  helperStyle: TextStyle(color: Color(0xff16f805)),
                  errorText: _xatoText ? "Text kiriting": null,
                  suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {
                        passwordVisible=!passwordVisible;
                      });
                    },
                    icon: passwordVisible
                    ? Icon(Icons.visibility)
                    : Icon(Icons.visibility_off),
                  )
                )
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 50),
            child: Row(
            children: [
              Checkbox(
                activeColor: Colors.blue,
                  value:checkboxValue,
                  onChanged:(value){
                    setState(() {
                      checkboxValue=value ?? false;
                    });
                  } ),
              Text("Remember me",style: TextStyle(color: Colors.black),)
            ],
          ),
          ),
          Container(
            padding: EdgeInsets.only(left: 50,right: 50),
            child: MaterialButton(
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  textEditingController.text.isEmpty ? _xatoText=true : _xatoText=false;
                });
              },
              child: Text("Sign in",style: TextStyle(color: Colors.white),),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5),
            alignment: Alignment.center,
            child: Text("Forgot this password?",style: TextStyle(color: Colors.blue),),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: Text("or continiu with",),
          ),
          Container(child: Row(
            children: [
              MaterialButton(onPressed: (){},


                child: Image.network("https://th.bing.com/th?id=OIP.hGaetDAQWapgIJbIOhPhXwHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2",
                width: 30,
                fit:BoxFit.cover,),
              ),
              Text("Facebook", style: TextStyle(color: Colors.blue),),
              MaterialButton(onPressed: (){},


                child: Image.asset("assets/images/goggle.png",
                  width: 30,
                  fit:BoxFit.cover,),

              ),
              Text("Google", style: TextStyle(color: Colors.blue),),
            ],
          ),),
          Container(
            padding: EdgeInsets.only(left: 80),
            child: Row(
            children: [
              Text("Don't have an account?",style: TextStyle(color: Colors.grey),),
              Text("Sign up",style: TextStyle(color: Colors.blue),)
            ],
          ),)



        ],
      ),

    );
  }
}
