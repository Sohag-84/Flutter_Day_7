import 'package:day_7/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationScreen extends StatelessWidget {
   RegistrationScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xffE0E2F9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sign up",style: GoogleFonts.aclonica(fontSize: height*0.04,color: Colors.orangeAccent),),
                      Text("Enter your credentials to continue",style: TextStyle(fontSize: height*0.02,color: Colors.orangeAccent),),
                    ],
                  ),
                  SizedBox(height: height*0.1,),
                  TextFormField(
                    validator: (name){
                      if(name!.isEmpty){
                        return "Name field is required";
                      }else if(RegExp(r"^([^\p{N}\p{S}\p{C}\p{P}]{2,20})$").hasMatch(name)){
                        return "Enter valid name";
                      }else{
                        return null;
                      }
                    },
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        labelText: "Name",
                        hintText: "Enter your name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                        )
                    ),
                  ),
                  SizedBox(height: height*0.02,),
                  TextFormField(
                    validator: (phone){
                      if(phone!.isEmpty){
                        return "Phone number field is required";
                      }
                      else if(!RegExp(r"(^([+]{1}[8]{2}|0088)?(01){1}[3-9]{1}\d{8})$").hasMatch(phone)){
                        return "Enter only bangladeshi number";
                      }
                      else{
                        return null;
                      }
                    },
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.phone),
                        labelText: "Phone number",
                        hintText: "Enter your phone number",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                        )
                    ),
                  ),
                  SizedBox(height: height*0.02,),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    validator: (email){
                      if(email!.isEmpty){
                        return "Email should be required";
                      }
                      else if(!RegExp(r'[a-z0-9]+@[a-z]+\.[a-z]{2,3}').hasMatch(email)){
                        return "Enter a valid email";
                      }
                      else{
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.mail),
                        labelText: "Email address",
                        hintText: "Enter your email address",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                        )
                    ),
                  ),
                  SizedBox(height: height*0.02,),
                  TextFormField(
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    validator: (password){
                      if(password!.isEmpty){
                        return "Password field required";
                      }else if(password.length<6){
                        return "Password length must be at least 8 characters";
                      }else{
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.key_rounded),
                        labelText: "Password",
                        hintText: "Enter Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                        )
                    ),
                  ),
                  SizedBox(height: height*0.04,),
                  InkWell(
                    onTap: (){
                      if(_formKey.currentState!.validate()){
                        Navigator.pushReplacement(context, CupertinoPageRoute(builder: (_)=>ProfileScreen()));
                      }
                    },
                    child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                            color: const Color(0xff53B175),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: height*0.02),),
                        )
                    ),
                  ),
                  SizedBox(height: height*0.01,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Allready have an account?"),
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                          child: Text("Sign in",style:TextStyle(fontSize: height*0.02,color: Colors.green,decoration: TextDecoration.underline))),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
