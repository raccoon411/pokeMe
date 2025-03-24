import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({ super.key });

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  // ====================================Handlers=========================================
  void _handleSignUp(BuildContext context) {
    context.go("/signUp");
  }

  void _handleSignIn(BuildContext context) {
    context.go("/signIn");
  }
  // =====================================================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image:AssetImage( 'assets/images/logo.png')),
                SizedBox(height: 150,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: (){_handleSignUp(context);},
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.blue),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                          )
                        ),
                        child: Text("Sing Up", style: TextStyle(color:Colors.white),)
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: (){_handleSignIn(context);},
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.blue),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                          )
                        ),
                        child: Text("Sing In", style: TextStyle(color:Colors.white),)
                      ),
                    ),
                  ],
                )
              ],
            )
          )
        ],
        ),
      ),
    );
  }
}