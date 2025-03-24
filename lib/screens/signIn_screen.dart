import 'package:dokeme/templates/customInput_template.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({ Key? key }) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  void _handleSignIn(BuildContext context) {
    context.go("/main");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 180),
            child: Image(image:AssetImage( 'assets/images/logo.png'))),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20,top:100),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Welcome To POKE ME", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, height: 1.5),),
                  Text("Enter Your email and pins to Sign In",style:  TextStyle(fontSize: 14, height: 1.5),),
                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: CustomInputTemplate(controller: TextEditingController(), hint: "User Name", borderColor: Colors.grey,  )),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: CustomInputTemplate(controller: TextEditingController(),  hint: "Pins",  type: "pins", borderColor: Colors.grey,)),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: (){
                            _handleSignIn(context);
                          },
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(Colors.blue),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )
                            )
                          ),
                          child: Text("Continue", style: TextStyle(color:Colors.white),)
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){
                        context.go("/signUp");
                      }, child: Text("I don't have an account", style: TextStyle(color: Colors.blue),)),
                    ],
                  )
                  
                ],
              )
            ),
          )
        ],
        ),
      ),
    );
  }
}