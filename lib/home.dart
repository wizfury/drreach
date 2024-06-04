import 'package:drreach/Components/MyButton.dart';
import 'package:drreach/Components/MyTextField.dart';
import 'package:drreach/Components/square.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatelessWidget {
  Home({super.key});

  //text editing controllers
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  //sign user in method
  void signUserIn()
  {

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        padding: EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height:50),
          
                //logo
                Icon(
                  Icons.safety_check,
                  size: 100,
                ),
          
                const SizedBox(height:50),
          
                //Sign In
                Text("Sign in",style: TextStyle(color: Colors.grey[700], fontSize: 16),),
          
          
                const SizedBox(height:50),
          
                //username
                MyTextfield(controller: usernamecontroller,obscureText:false,hintText: 'Username'),
          
                SizedBox(height: 25,),
          
                //password
                MyTextfield(controller: passwordcontroller,obscureText: true,hintText: 'Password'),
                SizedBox(height: 10,),
          
                //forgot Password?
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot Password',style: TextStyle(color: Colors.grey[600]),),
                  ],
                ),
          
                SizedBox(height: 25,),
          
                //signin Button
                Mybutton(
                  onTap: signUserIn,
                ),
          
                SizedBox(height: 50,),
                Divider(thickness: 0.5,color: Colors.grey,),
                SizedBox(height: 50,),
          
                //google + apple signin button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: 'assets/apple.png'),
                    const SizedBox(width: 25,),
                    SquareTile(imagePath: 'assets/google.png')
                  ],
                ),
                SizedBox(height: 20,),
          
          
                //not a  memeber? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const Text('Not a member? '),
                    const SizedBox(width: 4,),
                    const Text('Register Now',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
                  ],
                )
          
              ],
            ),
          ),
        ),
      )
    );
  }
}

//Center(
//         child: TextButton(
//           child: const Text("Enable Onboarding"),
//           onPressed: ()async{
//             final prefs = await SharedPreferences.getInstance();
//             prefs.setBool("onboarding", false);
//             },
//         ),
//       ),