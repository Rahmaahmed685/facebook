import 'package:facebook/screens/home_page.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool obscureText = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text(""),),
      body: Form(
        key: formKey,
        child: ListView(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Center(
               child: Image.asset(
                 'lib/images/facebook_logo_circle.png',
                  width: 75,
                  height: 75,
                 fit: BoxFit.fill,
               ),
             ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  border : OutlineInputBorder(),
                  hintText:"Mobile number or email address",
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return ' Please Enter Your Email';
                  }if(!value.contains('@') || !value.contains('.')){
                    return 'Please Enter Valid Email';
                  }
                  return null;
                },

                ),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: passwordController,
                obscureText: obscureText,
                decoration: InputDecoration(
                    border : OutlineInputBorder(),
                    label: Text("Password"),
                  suffixIcon: IconButton(
                    onPressed: () {
                      obscureText = !obscureText;
                      setState(() {});
                    },
                    icon: Icon(
                      obscureText ? Icons.visibility_off :
                      Icons.visibility,
                    ),
                  ),
                ),
                validator:  (value){
                  if(value!.isEmpty){
                    return ' Please Enter Your Email';
                  }if(value.length < 8){
                    return "Password must be at least 8 characters";
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: SizedBox(
                 width: double.infinity,
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.blue[800]),
                       onPressed: () => logIn(),
                     child: Text('Log In',
                          style: TextStyle(color: Colors.white),),

                   )),
             ),
            SizedBox(height: 10,),
            Center(
              child: GestureDetector(
                onTap: (){},
                child: Text('Forgotten Password?',
                  style: TextStyle(fontWeight: FontWeight.w500),),),
            ),
            SizedBox(height: 250,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white,
                side:  BorderSide(
                 width: 1.0,
                color: Colors.blue,
              ),
    ),
    onPressed: (){},
                  child: Text('Create new account',
                style: TextStyle(color: Colors.blue[900]),),

              ),
            ),

        ],),
      )






    );
  }
  void logIn(){
    if(!formKey.currentState!.validate()){
      return;
    }
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context)=> HomeScreen()));

  }
}
